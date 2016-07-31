Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get 'users' => 'users#index'
  resources :orders

  resources :burgers do
    collection do
      get :create_via_json
    end
  end
  resources :trackers do
    collection do
      get :create_via_json
    end
  end
end
