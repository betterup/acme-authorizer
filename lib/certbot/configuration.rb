module Certbot
  class Configuration
    # Default: ENV['CERTBOT_CHALLENGE']
    attr_accessor :challenge
    # Default: ENV['CERTBOT_TOKEN']
    attr_accessor :token

    def initialize
      @challenge = ENV['CERTBOT_CHALLENGE']
      @token = ENV['CERTBOT_TOKEN']
    end
  end
end
