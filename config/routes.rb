Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :products

  get '/login', to: 'session#login'
  post '/login', to: 'session#create'
  post '/logout', to: 'session#destroy'
  get '/logout', to: 'session#destroy'
end