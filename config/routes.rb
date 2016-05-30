Rails.application.routes.draw do
  get '/.well-known/acme-challenge/:challenge' => 'certbot#show', constraints: { protocol: 'http://' }
end
