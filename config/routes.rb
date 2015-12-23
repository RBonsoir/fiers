Rails.application.routes.draw do
  root to: "articles#index"

  devise_for :users

  resources :makers, only: :show do
    resources :messages, only: :create
  end

  resources :products, only: :show do
    resources :messages, only: :create
  end

  resources :articles, only: [] do
    resources :messages, only: :create
  end

  namespace :admin do
    root to: 'articles#index'

    resources :makers
    resources :products
    resources :articles
    resources :messages
  end
end
