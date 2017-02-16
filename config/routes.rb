Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :users do
    resources :pictures
  end
end
