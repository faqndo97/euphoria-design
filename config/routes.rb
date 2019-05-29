Rails.application.routes.draw do
  resources :posts

  namespace :admin do
    resources :posts
    resources :categories

    root to: 'posts#index'
  end
end
