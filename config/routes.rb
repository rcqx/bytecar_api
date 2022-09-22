Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registration: 'users/registration'
  }
  namespace :api do
    namespace :v1 do 
      resources :users, only: []
      resources :cars, only: [:index, :show]
      resources :reservations, only: [:create, :destroy]
    end
  end
end