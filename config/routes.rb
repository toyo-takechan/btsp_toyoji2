Rails.application.routes.draw do
  get 'sessions/new'
  root   'home#top'
  get    '/practice', to: 'home#practice'
  get    '/enjoy',    to: 'home#enjoy'
  get    '/ruby',     to: 'home#ruby'
  get    '/dot',      to: 'home#dot'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  resources :users
  resources :microposts
  # root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
