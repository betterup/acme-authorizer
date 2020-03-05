module Acme
  module Authorizer
    class TokensController < ::Acme::Authorizer::ApplicationController
      def show
        token = params[:token]
        if acme_authorizer_config.valid_token?(token)
          render plain: acme_authorizer_config.key_authorization_for_token(token)
        else
          head :not_found
        end
      end

      private

      def acme_authorizer_config
        Acme::Authorizer.configuration
      end
    end
  end
end
