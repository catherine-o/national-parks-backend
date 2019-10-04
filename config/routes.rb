Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :parks, only: [:index]
      resources :bucketlists, only: [:create, :destroy]
      resources :memoirs, only: [:create, :destroy]
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
    end
  end
end