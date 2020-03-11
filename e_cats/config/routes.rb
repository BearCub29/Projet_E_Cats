Rails.application.routes.draw do
  devise_for :users
  resources :users 
  resources :items 
  root to: "items#index"

  get 'users/index'

  resources :carts 

#only destroy
  resources :join_item_carts
  
  resources :charges

end
