Rails.application.routes.draw do
  resources :posts
  
  namespace :admin do
    resources :posts

    root to: 'posts#index'
  end
end
