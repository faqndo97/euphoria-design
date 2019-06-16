# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts, only: %i[index show]

  namespace :admin do
    devise_for :admin_users, path: 'auth', controllers: {
      sessions: 'admin_users/sessions'
    }

    root to: 'posts#index'

    resources :posts
    resources :categories
  end
end
