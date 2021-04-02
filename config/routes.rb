Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :products
  resources :stores
  resources :user_products

  # new form for log in
  get "/login", to: "sessions#new"
  # action after we submit ^ that form
  post "/login", to: "products#index"  


  # route to logout
  delete "/logout", to: "sessions#destroy"
  # form for sign up unless? 

end

