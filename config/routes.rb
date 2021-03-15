Rails.application.routes.draw do
  get 'products/edit'
  get 'products/new'
  get 'groups/show'
  get 'dashboards/show'
  devise_for :users
  resource :dashboard, only: :show

  resources :groups, only: :show
  resources :products, only: [:new, :edit, :destroy, :update, :create]
end
