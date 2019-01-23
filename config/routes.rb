Rails.application.routes.draw do
  root action: :index, controller: 'application'
  resources :shares
  resources :qrs
  resources :pets
  resources :users

  namespace :api do
    namespace :raspberry do
      get 'count/:user_id', action: :count
      get ':user_id/:pet_id', action: :create_share
    end
  end
end
