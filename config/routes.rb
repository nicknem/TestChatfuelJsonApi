Rails.application.routes.draw do
  get 'bots/index'

  get 'bots/show'

  get 'bots/new'

  get 'bots/create'

  get 'bots/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get 'users' => 'users#index'
  resources :orders
  resources :fb_users, :burgers, :trackers do
    collection do
      get :create_via_json
    end
  end
end
