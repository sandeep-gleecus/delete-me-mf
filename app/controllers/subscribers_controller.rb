class SubscribersController < ApplicationController
  before_action :authenticate_user!
  # def current_subscriber
  #   current_user
  # end

  def edit_card
    # @subscriber = current_user
    #
    #
    # current_user.create_stripe_customer unless current_user.stripe_id? # fix for users prior to bug fix
    # @setup_intent = Rails.cache.fetch("#{current_user.email}/setup_intent") do
    #   Stripe::SetupIntent.create(customer: current_user.stripe_id)
    # end
    # @subscription = current_user.stripe_subscription if current_user


    # current_user.create_stripe_customer unless current_user.stripe_id? # fix for users prior to bug fix
    # @setup_intent = Rails.cache.fetch("#{current_user.email}/setup_intent") do
    #   Stripe::SetupIntent.create(customer: current_user.stripe_id)
    # end
    # @subscription = current_user.stripe_subscription if current_user


    current_user.create_stripe_customer unless current_user.stripe_id? # fix for users prior to bug fix
    @setup_intent = Rails.cache.fetch("#{current_user.email}/#{current_user.stripe_id}/setup_intent") do
      Stripe::SetupIntent.create(customer: current_user.stripe_id)
    end
    @subscription = current_user.stripe_subscription if current_user
  end

=begin
  def update_card

    @subscriber = current_user
    # stripe_token = 'secret_NBAe2F664GeHkVXdK3FfGj3RUw2xRRi'# params[:setup_intent_client_secret]  #  setup_intent
    stripe_token = params[:stripe_token]
    Stripe::Customer.create_source(
        @subscriber.stripe_id,
        {source: 'tok_visa'})


    if @subscriber.update_card(@subscriber, stripe_token) # setup_intent
      flash[:success] = 'Saved. Your card information has been updated.'
      redirect_to edit_card_url
    else
      flash[:warning] = 'Stripe reported an error while updating your card. Please try again.'
      redirect_to edit_card_url
    end
  end
=end


  def update_card
    @subscriber = current_user
    raise params.inspect
    Rails.logger.debug("=============#{params[:stripe_card_token]} =============")
    if @subscriber.update_card(@subscriber, 'tok_1MRlxbLYIrBLw1nbnMaZ7iAQ')
      flash[:success] = 'Saved. Your card information has been updated.'
      redirect_to '/dashboard/settings/subscription'
    else
      flash[:error] = 'Stripe reported an error while updating your card. Please try again.'
      redirect_to edit_card_url
    end
  end
end
