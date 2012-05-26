RailsReferenceV323::Application.routes.draw do
  get "comments/new"

  get "authors/index"

  get "authors/show"

  get "articles/index"

  get "articles/show"

  root to: 'articles#index'
  resources :authors
  resources :articles
  resources :comments
end
