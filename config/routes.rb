Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "restaurants#index"

  get 'restaurants', to: 'restaurants#index'
end
