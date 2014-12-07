Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reves, only: [:show, :create]
  root 'reves#show'
  get 'a-propos' => 'pages#show', id: 'about', as: 'about'
end
