Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'pages#dashboard'
  resources :animals do
    resources :bookings, only: [ :new, :create, :edit, :update ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals
  resources :bookings do
    member do
      get "validate_booking"
    end
  end
  resources :reviews, only: [:new, :create]
end
