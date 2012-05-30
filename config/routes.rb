RailsReferenceV323::Application.routes.draw do
  root to: 'projects#index'
  resources :projects
end
