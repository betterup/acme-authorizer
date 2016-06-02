Rails.application.routes.draw do
  get '/.well-known/acme-challenge/:token' => 'acme/authorizer/tokens#show', constraints: { protocol: 'http://' }
end
