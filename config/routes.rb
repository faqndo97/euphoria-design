Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts, only: %i[index show]

  namespace :admin do
    resources :posts
    resources :categories

    root to: 'posts#index'
  end
end
