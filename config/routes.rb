Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/", to: "welcome#index"
  root "welcome#index"
  get "/login", to: "welcome#login"
  post "/login", to: "welcome#create"
end
