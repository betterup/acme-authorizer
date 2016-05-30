## Installation

NOTE: the certbot challenge/response *must* be served over HTTP without
SSL.  This means that your Rails application can not have the `force_ssl` flag
set in your `config/application.rb`.

In order to enable application wide SSL, use this alternative method:
http://guides.rubyonrails.org/action_controller_overview.html#force-https-protocol

## Configuration

By default, this library is configured via ENV variables.
```
CERTBOT_CHALLENGE = Certbot challenge code
CERTBOT_TOKEN = Certbot response token
```

The challenge and token can also be configured via Ruby API.
```ruby
Certbot.configure do |config|
  config.challenge = 'my_challenge_code'
  config.token = 'my_response_token'
end
```
