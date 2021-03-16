Rails.application.routes.draw do
  root to: "home#show"
  devise_for :users
  resource :dashboard, only: :show

  resources :groups, only: [:show, :edit, :new, :create, :update]
  resources :products, only: [:new, :edit, :destroy, :update, :create]
  resources :users, only: [:show, :edit, :update]
end
