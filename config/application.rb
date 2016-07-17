require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProntoWeb
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
    config.generators do |g|
      g.test_framework  false
      g.stylesheets     false
      g.javascripts     false
      g.helpers         false
    end
  end
end
