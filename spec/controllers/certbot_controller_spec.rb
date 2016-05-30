RSpec.describe CertbotController do
  describe '#show' do
    context 'with valid token' do
      let(:token) { 'valid_token' }
      let(:key_authorization) { 'authorization' }
      before do
        Certbot.configure do |config|
          config.token = token
          config.key_authorization = key_authorization
        end
        get :show, token: token
      end
      it 'renders key authorization' do
        expect(response.body).to eq key_authorization
      end
    end
    context 'with invalid token' do
      before do
        get :show, token: 'invalid_token'
      end
      it { expect(response.status).to eq 404 }
    end
  end
end
