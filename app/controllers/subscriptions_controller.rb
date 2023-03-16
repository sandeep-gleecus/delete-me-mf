class SubscriptionsController < ApplicationController
  protect_from_forgery with: :null_session, only: [:webhook]
  before_action :authenticate_user!, only: [:new, :create]
  before_action :redirect_to_onboarding, if: -> { current_user.exempt_from_subscription? || current_user.has_active_subscription? }, only: [:new]

  def new
    current_user.create_stripe_customer unless current_user.stripe_id? # fix for users prior to bug fix
    @setup_intent = Rails.cache.fetch("#{current_user.email}/setup_intent") do
      Stripe::SetupIntent.create(customer: current_user.stripe_id)
    end
    @subscription = current_user.stripe_subscription if current_user
  end

  def create
    setup_intent = Stripe::SetupIntent.retrieve(params[:setup_intent])
    customer = Stripe::Customer.retrieve(current_user.stripe_id)
    stripe_price_id = params[:yearly] == "true" ? ENV["STRIPE_YEARLY_PLAN_ID"] : ENV["STRIPE_MONTHLY_PLAN_ID"]

    # ensures default payment method is set for subscription
    Stripe::Customer.update(customer.id, invoice_settings: {default_payment_method: setup_intent.payment_method}) if customer.invoice_settings.default_payment_method.nil?
    subscription_attrs = { customer: setup_intent.customer,
                           items: [{ price: stripe_price_id }] }
    already_subscribed = current_user.subscription
    # If user already subscribed
    # TODO: SKIP free_trial 7days for below statuses except |trialing|trialling|
    # ==> |active|incomplete|incomplete_expired|past_due|canceled|cancelled|unpaid
    subscription_attrs[:trial_period_days] = I18n.t('free_trial.try_for_days') unless already_subscribed
    subscription = Stripe::Subscription.create(subscription_attrs)
    current_user.update_attribute(:subscription, id: subscription.id, price_id: stripe_price_id, status: subscription.status )
    redirect_to onboarding_path
  end

  def update
    # cancel right away
    if params[:cancel_now]
      customer = Stripe::Subscription.retrieve(current_user.subscription["id"])
      stripe_price_id = params[:yearly] == "true" ? ENV["STRIPE_YEARLY_PLAN_ID"] : ENV["STRIPE_MONTHLY_PLAN_ID"]
      subscription = Stripe::Subscription.update(
          customer.id,
          {
              cancel_at_period_end: true
          }
      )
      current_user.update_attribute(:subscription, {id: customer.id, price: stripe_price_id, status: customer.status})
      # Create cancellation record
      current_user.cancellations.create!(detail: user_params[:cancellations_attributes]['0']['detail'])
      redirect_to dashboard_settings_subscription_path, notice: I18n.t('subscription.end_message')
    elsif params[:go_for_extension]
      # free extension
      # customer = Stripe::Subscription.retrieve(current_user.subscription["id"])
      stripe_price_id = params[:yearly] == "true" ? ENV["STRIPE_YEARLY_PLAN_ID"] : ENV["STRIPE_MONTHLY_PLAN_ID"]
      # subscription = Stripe::Subscription.update(
      #     customer.id,
      #     {
      #         trial_from_plan: true,
      #     }
      # )

      subscription = Stripe::Subscription.update(current_user.subscription['id'],
                                                 { trial_end: (current_user.sub_trial_end + 12.days).to_i })
      # TODO: think about if billing period start should be updated to when trial ends?
      current_user.update_attribute(:subscription, { id: subscription.id, price: stripe_price_id, status: subscription.status, free_sub_extended: true })
      current_user.update(user_params)
      redirect_to dashboard_settings_subscription_path, notice: 'Your subscription has been extended by 2 weeks.'
    else
      redirect_to dashboard_settings_subscription_path, notice: 'Thank you for staying'
    end
  end

  def webhook
    payload = request.body.read
    sig_header = request.env["HTTP_STRIPE_SIGNATURE"]
    endpoint_secret = ENV["STRIPE_WEBHOOK_SECRET_KEY"]
    event = nil

    begin
      event = Stripe::Webhook.construct_event(
          payload, sig_header, endpoint_secret
      )
    rescue JSON::ParserError => err
      # Invalid payload
      logger.info "⚠️  Webhook parsing failed. #{err.message})"
      head(400)
      return
    rescue Stripe::SignatureVerificationError => err
      # Invalid signature
      logger.info "⚠️  Webhook signature verification failed. #{err.message})"
      head(400)
      return
    end

    case event.type
      # columns:
      # "invoice_payment_fail_wh", "invoice_payment_success_wh"
    when 'invoice.payment_failed'
      logger.debug "DEBUG ===: #{event.type}: RECEIVED ==="
      handle_invoice_payment_fail_wh(event.data.object)
    when 'invoice.payment_succeeded'
      logger.debug "DEBUG ===: #{event.type}: RECEIVED ==="
      handle_invoice_payment_success_wh(event.data.object)

    when "customer.subscription.created", "customer.subscription.updated", "customer.subscription.pending_update_expired", "customer.subscription.pending_update_applied", "customer.subscription.deleted"
      subscription = event.data.object
      if subscription
        user = User.find_by(stripe_id: subscription.customer)
        if user
          sub_updated = user.update_attribute(:subscription, { id: subscription.id, price_id: subscription.plan.id, status: subscription.status })
          if sub_updated
            logger.info "SUCCESS: #{event.type}: subscription handled successfully"
          else
            logger.error "ERROR===: #{event.type}: failed to handle subscription"
          end
        else
          logger.error "ERROR===: #{event.type}: failed to find user with subscription details"
        end
      else
        logger.error "ERROR===: #{event.type}: subscription not found"
      end
    else
      logger.error "ERROR===: Unhandled event type: #{event.type}"
    end

    head(200)
  end

  def handle_invoice_payment_fail_wh(event_data)
    # cus_MnZNOkZZ4hYEw0
    return if event_data['paid'] # skip if already paid

    return unless event_data['customer']

    # TODO: remove hardcoded stripe id & cleanup code
    user = User.where(stripe_id: event_data['customer']).first # cus_MnZNOkZZ4hYEw0
    if user
      logger.debug("SUCCESS===:  User found with stripe_id: #{event_data['customer']}")
      user.update_column(:invoice_payment_fail_wh, event_data)
      if user.invoice_payment_success_wh
        success_event_data = user.invoice_payment_success_wh
        success_event_data['paid'] = false
        success_event_data['created'] = event_data['created']
        user.update_column(:invoice_payment_success_wh, success_event_data)
      end
    else
      logger.error("ERROR===:  User not found with stripe_id: #{event_data['customer']}")
    end
  end


  def handle_invoice_payment_success_wh(event_data)
    # cus_MnZNOkZZ4hYEw0
    return unless event_data['paid'] # skip if already paid

    return unless event_data['customer']

    # TODO: remove hardcoded stripe id
    user = User.where(stripe_id: event_data['customer']).first # cus_MnZNOkZZ4hYEw0
    if user
      logger.debug("SUCCESS====:  User found with stripe_id: #{event_data['customer']}")
      user.update_column(:invoice_payment_success_wh, event_data)
      if user.invoice_payment_fail_wh
        fail_event_data = user.invoice_payment_fail_wh
        fail_event_data['paid'] = true
        fail_event_data['created'] = event_data['created']
        user.update_column(:invoice_payment_fail_wh, fail_event_data)
      end
    else
      logger.error("ERROR===:  User not found with stripe_id: #{event_data['customer']}")
    end
  end

  private

  def user_params
    params.require(:user).permit(cancellations_attributes: [:reason, :detail, :user_id])
  end
end
