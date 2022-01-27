Rails.application.routes.draw do
  # root "near#index"
  root 'pages#home'
  get 'about', to: 'pages#about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/near/:id", to: "near#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
