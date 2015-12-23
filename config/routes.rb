Rails.application.routes.draw do
  root to: "articles#index"

  devise_for :users

  resources :makers do
    resources :products
  end

  resources :articles

end
