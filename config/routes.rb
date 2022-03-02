# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords' }
  resources :comments
  resources :likes
  resources :posts
  get 'likes/create'
  get 'comments/create'
  resources :users
  root 'users#index'
    
    resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
end

