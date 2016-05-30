class CertbotController < Certbot::ApplicationController
  def show
    if params[:token] == certbot_config.token
      render text: certbot_config.key_authorization
    else
      render nothing: true, status: 404
    end
  end

  private

  def certbot_config
    Certbot.configuration
  end
end
