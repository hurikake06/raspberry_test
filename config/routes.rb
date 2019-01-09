Rails.application.routes.draw do
  resources :qrs
  resources :pets
  resources :users
  namespace :api do
    namespace :raspberry do
      get ':user_id/:pet_id', action: :create_share
      get 'count/:user_id', action: :count
    end
  end
end
