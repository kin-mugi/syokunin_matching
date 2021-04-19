Rails.application.routes.draw do
  get 'users/profile'
  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'profile' => 'users#profile'
  resources :users
end