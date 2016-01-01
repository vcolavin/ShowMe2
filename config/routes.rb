Rails.application.routes.draw do
  devise_for :users
  resources :artists, only: [:create]

  resources :welcome, only: [:index]

  root 'welcome#index'
end
