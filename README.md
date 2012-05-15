# New Relic: Middleware

Use this middleware to see how long your app is spending in middleware. 

## Installation

Add this line to your application's Gemfile:

    gem 'newrelic-middleware'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install newrelic-middleware

## Usage

```ruby
use NewRelicMiddleware::TrackingSupport
run MyApp
```

No integration is required for Rails. It will add itself.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
