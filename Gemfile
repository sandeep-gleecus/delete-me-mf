source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.5"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 6.1', '>= 6.1.5'

# Use PostgreSQL as the database for Active Record
gem "pg", "~> 1.1"

# Use Puma as the app web server
gem "puma", "~> 5.0"

# Use Seedbank to split out complex seeds into multiple files and let each environment have it"s own seeds
gem "seedbank"

# Use AWS SDK for access to Amazon Web Services
gem "aws-sdk-s3"

# Use CSS Bundling for Rails to bundle and process CSS then deliver it via the asset pipeline
gem "cssbundling-rails"

# Use JavaScript Bundling for Rails to bundle JS then deliver it via the asset pipeline
gem "jsbundling-rails"

# Use Stimulus for the JavaScript front-end framework
gem "stimulus-rails"

# Use SassC to compile Sass as CSS
gem "sassc-rails", "~> 2.1"

# Use Devise as a flexible authentication solution
gem "devise"

# Use Stripe Ruby Library for access to the Stripe API
gem "stripe"

# Use intercom-ruby for access to the Intercom API
gem "intercom", "~> 4.1"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Use Active Storage Validations for adding simple validations for Active Storage
gem "active_storage_validations", "~> 0.9.5"

# Use Simple Form for easier Rails forms
gem "simple_form"

# Use ClientSideValidations for easy client-side validation
gem "client_side_validations"
gem "client_side_validations-simple_form"

# Use Metamagic for creating meta tags
gem "metamagic"

# Use Font Awesome for awesome icons
gem "font-awesome-sass", "~> 5.15.1"

# Use RailsAdmin as a Rails engine that provides an easy-to-use interface for managing your data
gem "rails_admin"

# Use Ancestry to allow records to be organised as a tree structure (or hierarchy)
gem "ancestry"

# Use FriendlyId for creating pretty URLs and slugs
gem "friendly_id"

# Use Simple Calendar as a calendar
gem "simple_calendar", "~> 2.4", ">= 2.4.3"

# Use Kaminari for a scope & engine based pagination
gem "kaminari"

# Use Ruby OAuth for implementing both OAuth 1.0 clients and servers
gem "oauth"

# Use Obscenity as a profanity filter
gem "obscenity"

# Use Scout APM for detailed Rails application performance monitoring
gem "scout_apm"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

# google recaptcha v3 invisible
gem 'new_google_recaptcha' # 1.4.0

# Format log output as json
gem "lograge"

group :development, :test do
  # Use dotenv to Shim to load environment variables from .env into ENV in development.
  gem "dotenv-rails"

  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "web-console", ">= 4.1.0"

  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"

  # Preview email in the default browser instead of sending it
  gem "letter_opener_web", "~> 2.0"

  # Use Rubocop as a Ruby static code analyzer (a.k.a. linter) and code formatter
  gem "rubocop", require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"

  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end
