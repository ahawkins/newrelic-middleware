require 'newrelic-middleware'

require 'minitest/unit'
require 'minitest/pride'
require 'minitest/autorun'

require 'rack/test'

class HelloWorld
  def self.call(env)
    [200, env.slice('HTTP_X_MIDDLEWARE_START'), ["Hi"]]
  end
end

TestApp = Rack::Builder.new do
  use NewRelicMiddleware::TrackingSupport
  run HelloWorld
end

ENV['RAILS_ENV'] = "test"

require 'rails'
require 'action_controller/railtie'
require 'newrelic-middleware/railtie'

class TestRailsApp < Rails::Application
  config.active_support.deprecation = proc { |message, stack| }
  initialize!
end
