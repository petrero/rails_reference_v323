RailsReferenceV323::Application.routes.draw do
  get 'signup', to: "users#new", as: 'signup'
  get 'login', to: "sessions#new", as: 'login'
  get 'logout', to: "sessions#destroy", as: 'logout'

  root to: 'articles#index'
  resources :articles
  
  
  resources :users
  resources :sessions
end
