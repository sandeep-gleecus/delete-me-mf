class DeviseMailer < Devise::Mailer
  # application mailer for sending mails => replace it where it needed instead of default mailer.html.erb
  # OR add below to ApplicationMailer.rb
  layout 'app_mailer'

  # To render inline images in mail without using asset-pipeline/webapacker versions
  # versions may change on deployment so existing mails will not render the images because of previous version
  helper(MailerImageHelper)

  # This should be same as Single Sender Verification
  # https://sendgrid.com/docs/for-developers/sending-email/sender-identity/
  default from: ENV['SENDGRID_FROM_EMAIL'],
          reply_to: ENV['SENDGRID_REPLY_EMAIL']
  include Devise::Controllers::UrlHelpers
  include AbstractController::Callbacks
  after_action :set_sendgrid_delivery_options, only: :reset_password_instructions

  def reset_password_instructions(record, token, opts={})
    @user = record
    @token = token
    super
  end

  private

  # Sendgrid account michelle@motherfit.co.uk
  def set_sendgrid_delivery_options
    settings = { user_name: 'apikey',
                 password: ENV['SENDGRID_API_KEY'],
                 domain: ENV['SENDGRID_DOMAIN'],
                 address: 'smtp.sendgrid.net',
                 port: 587, # 25, 465, 587 or 2525
                 authentication: :plain,
                 enable_starttls_auto: true }
    message.delivery_method(:smtp, settings)
  end
end
