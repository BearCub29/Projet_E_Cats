Rails.application.routes.draw do

  resources :items 
  root to: "items#index"
  get 'users/index'
  devise_for :users

end
