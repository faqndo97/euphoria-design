# frozen_string_literal: true

Rails.application.routes.draw do
  post 'newsletter/subscribe'
  root to: 'home#index'

  resources :posts, only: %i[index show]

  resources :about, only: %i[index]
  namespace :admin do
    devise_for :admin_users, path: 'auth', controllers: {
      sessions: 'admin_users/sessions'
    }

    root to: 'posts#index'

    resources :posts
    resources :categories
    resources :admin_users
    resources :newsletters
  end
end
