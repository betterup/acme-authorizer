## Overview
This gem is an implementation of the [certbot http-01
challenge](https://tools.ietf.org/html/draft-ietf-acme-acme-01#page-38)
for use in Rails applications.

## Installation

```ruby
# Gemfile
gem 'certbot'
```

NOTE: the certbot challenge/response *must* be served over HTTP without
SSL.  This means that your Rails application can not have the `force_ssl` flag
set in your `config/application.rb`.

In order to enable application wide SSL, use this alternative method:
http://guides.rubyonrails.org/action_controller_overview.html#force-https-protocol

## Configuration

By default, this library is configured via ENV variables.
```
CERTBOT_TOKEN = Certbot challenge token
CERTBOT_KEY_AUTHORIZATION = Certbot key authorization for valid request
```

The challenge and token can also be configured via Ruby API.
```ruby
Certbot.configure do |config|
  config.token = 'my_challenge_token'
  config.key_authorization = 'my_key_authorization'
end
```
