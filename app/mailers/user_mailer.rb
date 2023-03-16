class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]

    @user.update_intercom_contact

    # create Contact 'User onboarded' event
    @user.intercom.events.create(
      event_name: "User onboarded",
      created_at: Time.now.to_i,
      email: @user.email,
      metadata: {
        motherhood_stage: @user.motherhood_stage_for_intercom,
      }
    )
  end
end
