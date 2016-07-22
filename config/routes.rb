Rails.application.routes.draw do
  get 'burgers/index'

  get 'burgers/show'

  get 'burgers/new'

  get 'burgers/create'

  get 'burgers/destroy'

  devise_for :users
  root to: 'pages#home'
  get 'users' => 'users#index'
  resources :orders
end
