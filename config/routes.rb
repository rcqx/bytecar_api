Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :cars, only: [:index, :show, :create]
      resources :users, param: :username, only: [:create] do
        resources :reservations, only: [:create, :destroy]
      end
      resources :sessions, only: [:create]
      
      # TEMPORAL ROUTE FOR MOCKING RESERVATIONS
      resources :reservations, only: [:index, :destroy]
    end
  end
end