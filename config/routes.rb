Rails.application.routes.draw do

  get 'search/index'

  get 'about', to: 'about#index', as: 'about'

  # get 'books', to: 'books#index'
  # get 'books/:id', to: 'books#show'
  #
  resources :books, only: [:index, :show]

  root :to => 'about#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
