Rails.application.routes.draw do
  get 'auth/login'
  get 'auth/get_current_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
      resources :order_products
      resources :breweries
      resources :users

      post '/signin', to: 'auth#signin'
      get '/auto_signin', to: 'auth#auto_signin'

      post '/update_stock', to: 'products#update_stock'
    end
  end
end
