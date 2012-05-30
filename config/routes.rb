RailsReferenceV323::Application.routes.draw do
  root to: 'products#index'
  resources :products
end
