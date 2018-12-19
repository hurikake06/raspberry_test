Rails.application.routes.draw do
  resources :pets
  resources :users
  namespace :api do
    scope :show do
      get 'user/:id', to: 'raspberry#show_user'
      get 'pet/:id', to: 'raspberry#show_pet'
      get 'share/:id', to: 'raspberry#show_share'
    end
    get 'create/share/:user_id/:pet_id', to: 'raspberry#create_share'
  end
end
