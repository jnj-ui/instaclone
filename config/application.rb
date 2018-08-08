require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Instaclone
  class Application < Rails::Application
    config.load_defaults 5.1
    Rails.application.config.assets.unknown_asset_fallback = true

  end
end
