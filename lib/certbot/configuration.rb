module Certbot
  class Configuration
    def initialize
      @tokens = {}
      add_tokens_from_env
    end

    def add_token(token, key_authorization)
      @tokens[token] = key_authorization
    end

    def valid_token?(token)
      @tokens.key?(token)
    end

    def key_authorization_for_token(token)
      @tokens[token]
    end

    private

    # TODO: raise error if missing matching authorization for token index
    def add_tokens_from_env
      ENV.each do |key, value|
        match = key.match(/\A^CERTBOT_TOKEN_([0-9]+)\Z/)
        next unless match
        index = match[1]
        token = value
        key_authorization = ENV["CERTBOT_KEY_AUTHORIZATION_#{index}"]
        add_token(token, key_authorization)
      end
    end
  end
end
