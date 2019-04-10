Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/show'
  root 'flights#index'

  get 'flights', to: 'flights#index'

  resources :flights, only: [:index]
  resources :bookings, only: [:new, :create, :show]
  resources :passengers, only: [:create]

end
