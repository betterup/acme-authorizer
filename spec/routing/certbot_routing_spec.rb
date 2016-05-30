RSpec.describe CertbotController do
  it { expect(get: '/.well-known/acme-challenge/123123').to route_to('certbot#show', challenge: '123123', protocol: 'http://') }
end
