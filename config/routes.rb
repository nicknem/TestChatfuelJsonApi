Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'users' => 'users#index'
  resources :orders
  resources :burgers
end
