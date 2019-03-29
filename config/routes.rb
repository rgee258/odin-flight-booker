Rails.application.routes.draw do
  root 'flights#index'

  get 'flights', to: 'flights#index'

  resources :flights, only: [:index]

end
