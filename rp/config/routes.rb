Rails.application.routes.draw do
  get '/', to: 'relying_party#index'
  get '/rp', to: 'relying_party#callback'
  root 'relying_party#index'
end
