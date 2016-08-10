Rails.application.routes.draw do
  resources :choices
  # Home Page Route
  root to: "welcome#index"

  # About Page Route
  get "/about", to: "welcome#about", as: "about"

  # User Routes
  resources :users
  get "/survey", to: "users#new_survey", as: "new_survey"
  post "/survey", to: "users#create_survey", as: "create_survey"
  get "/results", to: "users#results", as: "results"

  # Policy Routes
  resources :policies

  # Session Routes
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy", as: "logout"
  
end
