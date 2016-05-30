require 'certbot/engine' if defined?(Rails)
require 'certbot/configuration'

module Certbot
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Certbot::Configuration.new
    end
  end
end
