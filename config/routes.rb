Rails.application.routes.draw do
  resources :choices
  # Home Page Route
  root to: "welcome#index"

  # About Page Route
  get "/about", to: "welcome#about", as: "about"

  resources :users
  resources :policies

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  delete "/sessions", to: "sessions#destroy", as: "logout"

  get "/users/:id/survey", to: "users#new_survey", as: "new_survey"

  post "/users/:id/survey", to: "users#create_survey", as: "create_survey"
  
end
