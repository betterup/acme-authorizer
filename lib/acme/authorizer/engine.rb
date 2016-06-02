module Acme
  module Authorizer
    class Engine < ::Rails::Engine
      InvalidConfigurationError = Class.new(StandardError)

      isolate_namespace Acme::Authorizer
      initializer 'acme-authorizer.config.force_ssl_assertion' do |app|
        raise InvalidConfigurationError, 'force_ssl can not be enabled globally. see http://guides.rubyonrails.org/action_controller_overview.html#force-https-protocol' if app.config.force_ssl
      end
    end
  end
end
