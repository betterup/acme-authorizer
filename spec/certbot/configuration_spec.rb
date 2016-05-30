RSpec.describe Certbot::Configuration do
  after do
    (0...100).each do |index|
      ENV.delete("CERTBOT_KEY_AUTHORIZATION_#{index}")
      ENV.delete("CERTBOT_TOKEN_#{index}")
    end
  end

  describe '#initialize' do
    context 'when ENV[CERTBOT_TOKEN_0] and ENV[CERTBOT_KEY_AUTHORIZATION_0] is set' do
      let(:token) { 'aasdfasdf' }
      let(:key_authorization) { 'aasdfasdf' }
      before do
        ENV['CERTBOT_TOKEN_0'] = token
        ENV['CERTBOT_KEY_AUTHORIZATION_0'] = key_authorization
        @config = Certbot::Configuration.new
      end
      it { expect(@config.valid_token?(token)).to be true }
      it { expect(@config.key_authorization_for_token(token)).to eq key_authorization }
    end
  end

  describe '#add_token' do
    let(:token) { '123123' }
    let(:key_authorization) { '456456' }
    before do
      @config = Certbot::Configuration.new
      @config.add_token(token, key_authorization)
    end
    it { expect(@config.valid_token?(token)).to be true }
    it { expect(@config.key_authorization_for_token(token)).to eq key_authorization }
  end
end
