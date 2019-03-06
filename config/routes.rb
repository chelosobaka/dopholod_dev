Rails.application.routes.draw do
  root "cells#index"
  resources :splits, only: [:index, :show]
  resources :monoblocks, only: [:index, :show]
  resources :cells, only: [:index, :show]
  resources :products, only: [:index, :show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
