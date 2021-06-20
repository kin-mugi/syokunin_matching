Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/profile'
  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'profile' => 'users#profile'
  get    'signup',  to: 'users#new'
  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  get    'recieving_orders',   to: 'orders#index_recieving'
  get    'placing_orders',     to: 'orders#index_placing'
  get    'orders/new_recieving',     to: 'orders#new_recieving'          
  get    'orders/new_placing',       to: 'orders#new_placing'
  resources :orders, only: [:show, :create, :edit, :update]
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show]
  resources :users do
    member do
      get :my_orders
    end
  end


  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships,       only: [:create, :destroy]
end