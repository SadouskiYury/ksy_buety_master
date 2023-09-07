# frozen_string_literal: true

Rails.application.routes.draw do
  resources :admin_masters
  resources :masters
  resources :contacts
  resources :reviews
  resources :services
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
