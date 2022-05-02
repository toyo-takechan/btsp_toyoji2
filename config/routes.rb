Rails.application.routes.draw do
  root 'home#top'
  get '/practice', to: 'home#practice'
  get '/enjoy',    to: 'home#enjoy'
  resources :users
  resources :microposts
  # root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
