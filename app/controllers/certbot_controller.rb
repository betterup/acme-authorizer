class CertbotController < Certbot::ApplicationController
  def show
    challenge = params[:challenge]
    if challenge == certbot_config.challenge
      render text: certbot_config.token
    else
      render nothing: true, status: 404
    end
  end

  private

  def certbot_config
    Certbot.configuration
  end
end
