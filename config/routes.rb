Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root to: 'pages#home'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :orders, only: [ :new, :create ]
  end
  resources :orders, only: [ :destroy, :create ]
  resources :shopping_carts, only: [ :show ]
end
