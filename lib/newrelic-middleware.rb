require "newrelic-middleware/version"

module NewRelicMiddleware
  class TrackingSupport
    def initialize(app)
      @app = app
    end

    def call(env)
      env["HTTP_X_MIDDLEWARE_START"] = "t=#{(Time.now.to_f * 1000000).to_i}"
      @app.call env
    end
  end
end
