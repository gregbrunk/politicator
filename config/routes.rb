Rails.application.routes.draw do
  resources :users
  resources :policies

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

end
