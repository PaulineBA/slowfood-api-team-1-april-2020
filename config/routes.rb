Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :pings, only: [:index], constraints: { format: 'json' }
    end
    namespace :v1 do
      resources :products, only: [:index], constraints: { format: 'json' }
      resources :orders, only: [:create, :update, :index]
    end
  end
end
