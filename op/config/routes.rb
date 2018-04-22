Rails.application.routes.draw do
  get '/', to: 'open_id_provider#index'
  post '/', to: 'open_id_provider#create'
  root 'open_id_provider#index'
end
