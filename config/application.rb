require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MotherFit
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Business Specific Configs
    config.name = "Mother Fit"
    config.time_zone = "London"
    config.website_address = "https://www.motherfit.co.uk"
    config.email_address = "michelle@motherfit.com"
    config.phone_number = "07949128722"
    config.trustpilot_url = "https://uk.trustpilot.com/review/motherfit.co.uk"
    config.facebook_url = "https://www.facebook.com/groups/840584283018084/"
    config.twitter_url = "https://twitter.com/MotherFitOnline"
    config.youtube_url = "https://www.youtube.com/channel/UCUOt0FK7YRd-OAbg99UQggQ"
    config.instagram_url = "https://www.instagram.com/wearemotherfit/"

    # Platform-specific config
    config.annual_price = 7.50
    config.monthly_price = 9.99

    # Append fonts to asset pipeline
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
  end
end
