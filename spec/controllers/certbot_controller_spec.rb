RSpec.describe CertbotController do
  describe '#show' do
    context 'with valid challenge' do
      let(:challenge) { 'a_good_challenge' }
      let(:token) { 'expected_token' }
      before do
        Certbot.configure do |config|
          config.challenge = challenge
          config.token = token
        end
        get :show, challenge: challenge
      end
      it 'renders token' do
        expect(response.body).to eq token
      end
    end
    context 'with invalid challenge' do
      before do
        get :show, challenge: 'invalid_challenge'
      end
      it { expect(response.status).to eq 404 }
    end
  end
end
