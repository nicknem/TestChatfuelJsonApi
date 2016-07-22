Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'users' => 'users#index'
  get "orders", to: "orders#index"
end
