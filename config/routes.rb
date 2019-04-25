Rails.application.routes.draw do
  root "static_pages#main"
  get "main", to: "static_pages#main"
  get "contact", to: "static_pages#contact"
  get "about", to: "static_pages#about"

  resources :splits, only: [:index, :show]
  resources :monoblocks, only: [:index, :show]
  resources :cells, only: [:index, :show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
