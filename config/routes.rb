Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :products

  # new form for log in
  get "/login", to: "products#index"
  # action after we submit ^ that form
  post "/login", to: "sessions#create"  


  # # route to logout
  # delete "/logout", to: "sessions#destroy"
  # # form for sign up unless? 

end

