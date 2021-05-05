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
  resources :users do
    member do
      get :my_orders
    end
  end

  resources :recieving_orders do
    member do
      get :new_plus
    end
  end

  resources :placing_orders do
    member do
      get :new_plus
    end
  end

  resources :chats
end