require 'test_helper'

class RailsIntegrationTest < MiniTest::Unit::TestCase
  def test_loads_middleware
    middleware = TestRailsApp.config.middleware
    assert_equal NewRelicMiddleware::TrackingSupport, middleware.first.klass
  end
end
