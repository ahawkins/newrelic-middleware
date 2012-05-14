require 'test_helper'

class MiddlewareTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp
  end

  def test_adds_a_start_time_header
    get '/'
    assert last_response.ok?
    assert last_response.headers['HTTP_X_MIDDLEWARE_START']
  end
end
