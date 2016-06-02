RSpec.describe Acme::Authorizer::TokensController do
  it { expect(get: '/.well-known/acme-challenge/123123').to route_to('acme/authorizer/tokens#show', token: '123123', protocol: 'http://') }
end
