Rails.application.routes.draw do
  resources :choices
  # Home Page Route
  root to: "welcome#index"

  # About Page Route
  get "/about", to: "welcome#about", as: "about"

  #Resources Page Route
  get "/resources", to: "welcome#resources", as: "resources"

  # User Routes
  resources :users
  get "/profile", to: "users#show", as: "profile"
  get "/survey", to: "users#new_survey", as: "new_survey"
  post "/survey", to: "users#create_survey", as: "create_survey"
  get "/survey/edit", to: "users#edit_survey", as: "edit_survey"
  patch "/survey", to: "users#update_survey", as: "update_survey"
  delete "/survey", to: "users#delete_survey", as: "delete_survey"
  get "/results", to: "users#results", as: "results"

  # Policy Routes
  resources :policies

  # Session Routes
  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy", as: "logout"
  
end
