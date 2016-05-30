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

By default, this library is configured via pairs of ENV variables with the format:
```
/CERTBOT_TOKEN_[0-9]+/
/CERTBOT_KEY_AUTHORIZATION_[0-9]+/
```

for example:
```
CERTBOT_TOKEN_0=123123
CERTBOT_KEY_AUTHORIZATION_0=123123
```

The challenge and token can also be configured via Ruby API.
```ruby
Certbot.configure do |config|
  config.add_token('my_challenge_token', 'my_key_authorization')
end
```
