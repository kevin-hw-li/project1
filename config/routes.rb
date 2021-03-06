Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "posts#index"
  get "/", to: "posts#index"
  post "/", to: "posts#create"

  resources :posts, only: [:edit, :update, :destroy]

  get "signup", to: "users#new"
  post "signup", to: "users#create"

  get "users", to: "users#index"
  get "friends", to: "users#show"
  delete "friends", to: "friendships#destroy"


  get "signin", to: "sessions#new"
  post "signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy"


  resources :friendships, only: [:create, :destroy]

end
