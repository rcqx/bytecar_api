Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :users, only: []
      resources :cars, only: [:index, :show]
      resources :reservations, only: [:create, :destroy]
    end
  end
end