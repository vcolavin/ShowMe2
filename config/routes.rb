Rails.application.routes.draw do
  devise_for :users
  resources :artists, only: [:create]

  resources :home, only: [:index]

  root 'home#index'
end
