Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: :show

  resources :groups, only: [:show, :edit, :new, :create, :update]
  resources :products, only: [:new, :edit, :destroy, :update, :create]
  resources :users, only: :update
end
