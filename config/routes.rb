Rails.application.routes.draw do
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :products, only: [:index, :show] do
    collection do
      get "search"
    end
  end
  resources :contact, only: [:index, :show]
  resources :about, only: [:index, :show]
  resources :cart, only: [:create, :destroy]
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
