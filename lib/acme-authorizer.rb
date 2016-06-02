require 'acme/authorizer/engine' if defined?(Rails)
require 'acme/authorizer/configuration'

module Acme
  module Authorizer
    class << self
      def configure
        yield configuration
      end

      def configuration
        @configuration ||= Acme::Authorizer::Configuration.new
      end
    end
  end
end
