module Acme
  module Authorizer
    class TokensController < ApplicationController
      def show
        token = params[:token]
        if acme_authorizer_config.valid_token?(token)
          render text: acme_authorizer_config.key_authorization_for_token(token)
        else
          render nothing: true, status: 404
        end
      end

      private

      def acme_authorizer_config
        Acme::Authorizer.configuration
      end
    end
  end
end
