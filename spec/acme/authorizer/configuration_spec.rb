RSpec.describe Acme::Authorizer::Configuration do
  after do
    (0...100).each do |index|
      ENV.delete("ACME_KEY_#{index}")
      ENV.delete("ACME_TOKEN_#{index}")
    end
  end

  describe '#initialize' do
    context 'when ENV[ACME_TOKEN_0] and ENV[ACME_KEY_0] is set' do
      let(:token) { 'aasdfasdf' }
      let(:key_authorization) { 'aasdfasdf' }
      before do
        ENV['ACME_TOKEN_0'] = token
        ENV['ACME_KEY_0'] = key_authorization
        @config = described_class.new
      end
      it { expect(@config.valid_token?(token)).to be true }
      it { expect(@config.key_authorization_for_token(token)).to eq key_authorization }
    end
  end

  describe '#add_token' do
    let(:token) { '123123' }
    let(:key_authorization) { '456456' }
    before do
      @config = described_class.new
      @config.add_token(token, key_authorization)
    end
    it { expect(@config.valid_token?(token)).to be true }
    it { expect(@config.key_authorization_for_token(token)).to eq key_authorization }
  end
end
