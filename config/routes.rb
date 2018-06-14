Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/show'
  root 'home#index'
  get 'users/index'
  resources :players
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
