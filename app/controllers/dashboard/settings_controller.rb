class Dashboard::SettingsController < DashboardController
  def motherhood
  end

  def subscription
    if current_user.stripe_id
      @stripe_customer = Stripe::Customer.retrieve(current_user.stripe_id)
      @subscription = Stripe::Subscription.retrieve(current_user.subscription["id"])
      begin
        @payment_method = Stripe::PaymentMethod.retrieve(@stripe_customer.invoice_settings.default_payment_method)
      rescue NoMethodError => e
        logger.error "===ERROR: subscription => exception #{e.class.name} : #{e.message}"
        @payment_method = nil
      end
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def update_motherhood
    @user = User.find(params[:id])
    if @user.update(user_motherhood_params)
      redirect_to dashboard_settings_motherhood_path, notice: 'Your account has been updated successfully.'
    else
      render 'dashboard/settings/motherhood', status: :unprocessable_entity
    end
  end

  def update_personal
    @user = User.find(params[:id])
    if @user.update(user_personal_params)
      redirect_to dashboard_settings_personal_path, notice: 'Your account has been updated successfully.'
    else
      render 'dashboard/settings/personal', status: :unprocessable_entity
    end
  end

  private

  def user_params
    update_attrs = [:motherhood_stage, :pregnancy_due_date, :birth_date, :most_recent_birth_date, :fitness_goal, :activity_multiplier, :height, :date_of_birth, :daily_calorie_goal,
    weight_entries_attributes: [:weight]]
    params.require(:user).permit(update_attrs)
  end

  def user_motherhood_params
    update_attrs = [:motherhood_stage, :pregnancy_due_date, :birth_date,
                    :most_recent_birth_date, :fitness_goal, :activity_multiplier,
                    :height, :date_of_birth, :daily_calorie_goal,
                    weight_entries_attributes: [:weight]]
    params.require(:user).permit(update_attrs)
  end

  def user_personal_params
    update_attrs = [:email, :name, :phone_number, :avatar]
    params.require(:user).permit(update_attrs)
  end
end
