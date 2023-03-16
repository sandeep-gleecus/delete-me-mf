class RegistrationsController < Devise::RegistrationsController
  # layout "dashboard", only: [:edit, :update]
  layout "dashboard", except: [:new, :create]

  def personal
    @user = current_user
  end

  # POST /resource
  def create
    build_resource(sign_up_params)

    if NewGoogleRecaptcha.human?(
        params[:new_google_recaptcha_token],
        'register',
        NewGoogleRecaptcha.minimum_score,
        resource)
      resource.save
    else
      @recaptcha_error = I18n.t('recaptcha_v3.spam_detected')
    end
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      flash.now[:alert] = @recaptcha_error if @recaptcha_error
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  # def update
  #   super
  #   @user = current_user
  #   @user.assign_attributes(user_params)
  # end

  protected

  def after_sign_up_path_for(resource)
    new_subscription_path
  end

  def after_update_path_for(resource)
    edit_user_registration_path
  end

  # def update_resource(resource, params)
  #   if params[:current_password].blank?
  #    resource.update_without_password(params.except(:current_password, :email, :name, :avatar))
  #   else
  #     resource.update_with_password(params)
  #   end
  # end

  # def user_params
  #   update_attrs = [:account_update, :name, :avatar]
  #   params.require(:user).permit(update_attrs)
  # end
end
