class CertbotController < Certbot::ApplicationController
  def show
    token = params[:token]
    if certbot_config.valid_token?(token)
      render text: certbot_config.key_authorization_for_token(token)
    else
      render nothing: true, status: 404
    end
  end

  private

  def certbot_config
    Certbot.configuration
  end
end
