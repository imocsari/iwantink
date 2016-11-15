Rails.application.routes.draw do
  devise_for :artists
  devise_for :users
  root to: 'pages#home'

  # resources  :users # only: [:show, :new, :create, :index, ]
  resources :artists #only: [:show, :new, :create, :index,:destroy]
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
