Rails.application.routes.draw do
  resources :posts, only: %i[index show]

  namespace :admin do
    resources :posts
    resources :categories

    root to: 'posts#index'
  end
end
