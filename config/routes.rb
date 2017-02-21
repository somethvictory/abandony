Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :pictures
end
