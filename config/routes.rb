Rails.application.routes.draw do
  
  ActiveAdmin.routes(self)
 
  devise_for :users
  get  'home/index'
  get  'home/show'

  get  'users/index'
  get  'players/search',to: 'players#search'

  devise_scope :user do
    root :to => "devise/sessions#new"
  end


  resources :players
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
