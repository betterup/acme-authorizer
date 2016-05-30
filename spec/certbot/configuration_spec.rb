RSpec.describe Certbot::Configuration do
  after do
    ENV.delete('CERTBOT_KEY_AUTHORIZATION')
    ENV.delete('CERTBOT_TOKEN')
  end
  describe '#initialize' do
    context 'when ENV[CERTBOT_KEY_AUTHORIZATION] is set' do
      let(:key_authorization) { 'aasdfasdf' }
      before do
        ENV['CERTBOT_KEY_AUTHORIZATION'] = key_authorization
        @config = Certbot::Configuration.new
      end
      it { expect(@config.key_authorization).to eq key_authorization }
    end
    context 'when ENV[CERTBOT_TOKEN] is set' do
      let(:token) { 'aasdfasdf' }
      before do
        ENV['CERTBOT_TOKEN'] = token
        @config = Certbot::Configuration.new
      end
      it { expect(@config.token).to eq token }
    end
  end
end
