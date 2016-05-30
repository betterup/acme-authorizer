module Certbot
  InvalidConfigurationError = Class.new(StandardError)

  class Engine < ::Rails::Engine
    isolate_namespace Certbot
    initializer 'certbot.config.force_ssl_assertion' do |app|
      raise InvalidConfigurationError, 'force_ssl can not be enabled globally. see http://guides.rubyonrails.org/action_controller_overview.html#force-https-protocol' if app.config.force_ssl
    end
  end
end
