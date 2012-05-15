require 'newrelic_rpm'
require 'new_relic/agent/method_tracer'

module NewRelicMiddleware
  class Engine < ::Rails::Engine 
    initializer "newrelic.middleware-tracking" do |app|
      app.config.middleware.insert 0, TrackingSupport
    end

    config.after_initialize do |app|
      app.config.middleware.each do |m|
        klass = m.klass

        if klass.respond_to? :call
          klass.class_eval do
            extend NewRelic::Agent::MethodTracer

            add_method_tracer :call, "Middleware/#{klass}"
          end
        else
          klass.class_eval do
            include NewRelic::Agent::MethodTracer

            add_method_tracer :call, "Middleware/#{klass}"
          end
        end
      end
    end
  end
end
