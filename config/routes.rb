Rails.application.routes.draw do
  devise_for :users
root to: 'posts#index'
resources :posts
resources :users, only: [:show, :index, :destroy]
resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end
