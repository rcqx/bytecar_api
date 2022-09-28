Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :cars, only: [:index, :show]
      resources :users, only: [:create] do
        resources :reservations, only: [:create, :destroy]
      end
      resources :sessions, only: [:create]
    end
  end
end