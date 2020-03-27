Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get "/login", to: "users#login"
  get "/sign_up", to: "users#sign_up"
  post "/sign_up", to: "users#register"

  # get "/", to: "welcome#index"
  root "welcome#index"
  
end
