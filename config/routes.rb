Rails.application.routes.draw do
  root "near#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/near", to: "near#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
