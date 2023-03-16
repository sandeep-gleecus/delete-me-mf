# lograge to format log output as JSON
if Rails.env.production?
  Rails.application.configure do
    config.lograge.enabled = true
    config.lograge.logger = ActiveSupport::Logger.new(STDOUT)
    config.lograge.formatter = Lograge::Formatters::Json.new
  end
end
