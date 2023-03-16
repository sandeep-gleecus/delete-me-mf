class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :auto_switch_motherhood_stage

  protected

  def configure_permitted_parameters
    update_attrs = [:name, :avatar, :motherhood_stage, :pregnancy_due_date, :birth_date, :most_recent_birth_date, :fitness_goal, :activity_multiplier, :height, :date_of_birth, :daily_calorie_goal,
                    weight_entries_attributes: [:weight], cancellations_attributes: [:reason]
    ]
    devise_parameter_sanitizer.permit(:sign_up, keys: update_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: update_attrs)
  end

  def after_sign_in_path_for(resource)
    dashboard_root_path
  end

  def redirect_to_subscription
    redirect_to new_subscription_path
  end

  def redirect_to_onboarding
    redirect_to onboarding_path
  end

  def redirect_to_dashboard
    redirect_to dashboard_root_path
  end

  def auto_switch_motherhood_stage
    user = current_user
    return unless user
    return unless user.motherhood_stage
    return if user.postpartum? || user.beyond?
    return unless user.pregnancy? && user.pregnancy_week && user.pregnancy_week > 40 && user.pregnancy_week < 63

    # Update motherhood stage of user to postpartum when current stage is pregnancy and pregnancy week b/w 41-62
    Rails.logger.info("=== User-#{user.id}: switching motherhood stage from pregnancy to postpartum automatically ===")
    # user.update_attribute(:motherhood_stage, 'postpartum')
    user.update(motherhood_stage: 'postpartum',
                birth_date: user.pregnancy_due_date)
  end
end
