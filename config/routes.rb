Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :bikes, only: [ :new, :create ]
  end
  resources :bikes, only: [ :index, :show, :edit, :update, :destroy]

  resources :shopping_carts do
    resources :orders, only: [ :new, :create ]
  end
  resources :orders, only: [ :destroy ]
end
