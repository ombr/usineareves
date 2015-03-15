Rails.application.routes.draw do
  devise_for :users
  ActiveAdmin.routes(self)
  resources :boxes, ony: [:index, :new, :create] do
    resources :reves, only: [:show, :create]
  end
  root 'pages#show', id: 'home'
  get 'a-propos' => 'pages#show', id: 'about', as: 'about'
end
