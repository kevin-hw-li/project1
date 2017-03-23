Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "posts#index"
  get "/", to: "posts#index"
  post "/", to: "posts#create"

  get "signup", to: "users#new"
  post "signup", to: "users#create"

  get "users", to: "users#index"
  get "friends", to: "users#show"

  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy"


  resources :friendships

end
