Rails.application.routes.draw do
  get 'artists/index'

  get 'artists/show'

  get 'artists/new'

  get 'artists/update'

  get 'artists/create'

  get 'artists/destroy'

  devise_for :artists
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"

  # resources  :users # only: [:show, :new, :create, :index, ]
  resources :artists do #only: [:show, :new, :create, :index,:destroy]
    resources :bookings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
