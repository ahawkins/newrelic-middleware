# -*- encoding: utf-8 -*-
require File.expand_path('../lib/newrelic-middleware/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["twinturbo"]
  gem.email         = ["me@broadcastingadam.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "newrelic-middleware"
  gem.require_paths = ["lib"]
  gem.version       = NewRelicMiddleware::VERSION

  gem.add_development_dependency "rails"
  gem.add_development_dependency "rack-test"
end
