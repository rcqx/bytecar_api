Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do 
      resources :cars, only: [:index, :show, :create, :destroy]
      resources :users, param: :username, only: [:create]
      resources :sessions, only: [:create]
      resources :reservations, only: [:index, :create, :destroy]
    end
  end
end