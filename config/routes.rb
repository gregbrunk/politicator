Rails.application.routes.draw do
  # Home Page Route
  root to: "welcome#index"

  # About Page Route
  get "/about", to: "welcome#about", as: "about"

  resources :users
  resources :policies

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  delete "/sessions", to: "sessions#destroy", as: "logout"
  
end
