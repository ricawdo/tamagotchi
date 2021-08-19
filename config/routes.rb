Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'pages#dashboard'
  resources :animals do
    resources :bookings, only: [ :new, :create, :edit, :update ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals
  resources :reviews, only: [:new, :create]
end
