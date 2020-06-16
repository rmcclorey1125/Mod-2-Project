Rails.application.routes.draw do
  resources :reservations
  resources :restaurant_owners
  resources :reviews
  resources :users, only: [:index, :show, :new, :create]
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
