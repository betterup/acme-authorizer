Rails.application.routes.draw do
  get '/.well-known/acme-challenge/:token' => 'certbot#show', constraints: { protocol: 'http://' }
end
