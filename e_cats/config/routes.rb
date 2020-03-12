Rails.application.routes.draw do
  get 'avatars/create'
  devise_for :users
  resources :users, only: [:show, :edit, :update] do
    resources :avatars, only: [:create]
  end
  resources :items 
  root to: "items#index"

  get 'users/index'

  resources :carts 

#only destroy
  resources :join_item_carts

  scope 'admin', module: 'admin', as: 'admin' do
    resources :dashboard, only: [:index]
    resources :users
    resources :orders
    resources :items
  end


end
