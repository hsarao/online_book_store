Rails.application.routes.draw do

  get 'advanced_search', to: 'advanced_search#index', as: 'advanced_search'

  get 'search', to: 'search#index', as:'search'

  get 'about', to: 'about#index', as: 'about'

  # get 'books', to: 'books#index'
  #  get 'books/:cat', to: 'books#category'
  #
  resources :books, only: [:index, :show] do
    collection do
      post :clear_cart
    end
    member do
      post :add_to_cart
      post :mark_as_added
    end
  end

  root :to => 'about#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
