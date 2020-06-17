Rails.application.routes.draw do
  resources :reservations 
  resources :restaurant_owners
  resources :reviews
  resources :users, only: [:index, :show, :new, :create]
  resources :restaurants

  delete "sessions/logout", to: "sessions#logout", as: "logout" 
  get "sessions/new", to: "sessions#new", as: "new_login"
  post "/sessions", to: "sessions#create", as: "login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
