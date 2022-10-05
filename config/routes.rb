Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do 
      resources :cars, only: [:index, :show, :create, :destroy]
      resources :users, param: :username, only: [:create] do
        resources :reservations, only: [:create, :destroy]
      end
      resources :sessions, only: [:create]
      
      # TEMPORAL ROUTE FOR MOCKING RESERVATIONS
      resources :reservations, only: [:index, :destroy]
    end
  end
end