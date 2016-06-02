## Overview
This gem is an implementation of the [ACME http-01
challenge](https://tools.ietf.org/html/draft-ietf-acme-acme-01#page-38)
for use in Rails applications.

## Installation

```ruby
# Gemfile
gem 'acme-authorizer'
```

NOTE: the ACME http-01 challenge/response *must* be served over HTTP without
SSL.  This means that your Rails application can not have the `force_ssl` flag
set in your `config/application.rb`.

In order to enable application wide SSL, use this alternative method:
http://guides.rubyonrails.org/action_controller_overview.html#force-https-protocol

## Configuration

By default, this library is configured via pairs of ENV variables with the same format used by [sabayon](https://github.com/dmathieu/sabayon):
```
/ACME_TOKEN_[0-9]+/
/ACME_KEY_[0-9]+/
```

for example:
```
ACME_TOKEN_0=123123
ACME_KEY_0=123123
```

The challenge and token can also be configured via Ruby API.
```ruby
Acme::Authorizer.configure do |config|
  config.add_token('my_challenge_token', 'my_key_authorization')
end
```
