require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StarterApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    
    # This works because sassc-rails tries to compress tailwindCSS files, which is not desirable since TailwindCSS is designed to be used without compression. So sassc-rails tries to compress tailwind, and this causes a conflict, and errors. So by disabling css compression, it solves the conflict.
    config.assets.css_compressor = nil
  end
end
