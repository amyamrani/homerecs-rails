Rails.application.routes.draw do
  get 'groups/show'
  get 'dashboards/show'
  devise_for :users
  resource :dashboard, only: :show

  resources :groups, only: :show
end
