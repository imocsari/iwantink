Rails.application.routes.draw do


  devise_for :artists, :controllers => { omniauth_callbacks: 'artists/omniauth_callbacks' }
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  # resources  :users # only: [:show, :new, :create, :index, ]
  resources :artists do #only: [:show, :new, :create, :index,:destroy]
    resources :bookings
    resources :reviews, only: [:new, :create]
    resources :notifications, only: [:create]
  end

  resources :bookings, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
