Rails.application.routes.draw do
  devise_for :users
  root to: 'libraries#index'
  resources :libraries, only: [:index, :new, :create]
  resources :users, only: [:show,]
end
