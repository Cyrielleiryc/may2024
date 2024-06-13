Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "restaurants#index"

  get 'restaurants', to: 'restaurants#index'

  namespace 'api' do
    namespace 'v1' do
      resources :restaurants
    end
  end
end
