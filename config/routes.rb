Rails.application.routes.draw do
  root 'profiles#index'

  resources :profiles
  resources :products do
    member do
      delete 'delete_image/:image_id', to: 'products#delete_image', as: 'delete_image'
    end
  end
end
