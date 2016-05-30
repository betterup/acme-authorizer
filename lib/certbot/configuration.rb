module Certbot
  class Configuration
    # Default: ENV['CERTBOT_TOKEN']
    attr_accessor :token
    # Default: ENV['CERTBOT_KEY_AUTHORIZATION']
    attr_accessor :key_authorization

    def initialize
      @token = ENV['CERTBOT_TOKEN']
      @key_authorization = ENV['CERTBOT_KEY_AUTHORIZATION']
    end
  end
end
