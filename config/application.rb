require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EuphoriaDesign
  class Application < Rails::Application
    config.load_defaults 6.0

    Raven.configure do |config|
      config.dsn = 'https://0359ceb97afc4d8597ba91893b9b87e0:7792f93487534f48b37b2df632ba545a@sentry.io/1465974'
    end

    config.serve_static_assets = true

    config.social_networks_urls = {
      facebook: 'https://www.facebook.com/euphoriadesignuy/',
      instagram: 'https://www.instagram.com/euphoriasdesign/',
    }
  end
end
