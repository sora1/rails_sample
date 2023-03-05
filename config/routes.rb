Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'healthcheck', to: 'healthcheck#healthcheck'
  resources :users
  resources :dynamo_users
end
