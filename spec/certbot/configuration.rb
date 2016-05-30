RSpec.describe Certbot::Configuration do
  after do
    ENV.delete('CERTBOT_CHALLENGE')
    ENV.delete('CERTBOT_TOKEN')
  end
  describe '#initialize' do
    context 'when ENV[CERTBOT_CHALLENGE] is set' do
      let(:challenge) { 'aasdfasdf' }
      before do
        ENV['CERTBOT_CHALLENGE'] = challenge
        @config = Certbot::Configuration.new
      end
      it { expect(@config.challenge).to eq challenge }
    end
    context 'when ENV[CERTBOT_TOKEN] is set' do
      let(:token) { 'aasdfasdf' }
      before do
        ENV['CERTBOT_TOKEN'] = challenge
        @config = Certbot::Configuration.new
      end
      it { expect(@config.token).to_not eq token }
    end
  end
end
