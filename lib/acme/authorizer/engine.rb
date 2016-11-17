module Acme
  module Authorizer
    class Engine < ::Rails::Engine
      isolate_namespace Acme::Authorizer
      initializer 'acme-authorizer.config.set_ssl_options' do |app|
        app.config.ssl_options.deep_merge! redirect: { exclude: -> request { request.path =~  /\A\/\.well-known\/acme-challenge/ } }
      end
    end
  end
end
