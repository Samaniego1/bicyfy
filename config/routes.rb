Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root to: 'pages#home'
  resources :users do
    resources :bikes, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bikes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :orders, only: [ :new, :create, :show ]
  end
  resources :orders, only: [ :index, :destroy]
end
