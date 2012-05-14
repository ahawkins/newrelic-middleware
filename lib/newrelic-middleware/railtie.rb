module NewRelicMiddleware
  class Engine < ::Rails::Engine 
    initializer "newrelic.middleware-tracking" do |app|
      app.config.middleware.insert 0, TrackingSupport
    end
  end
end
