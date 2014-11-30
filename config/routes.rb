Rails.application.routes.draw do
  resources :reves, only: [:show, :create]
  root 'reves#show'
end
