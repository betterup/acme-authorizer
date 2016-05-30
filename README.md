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
