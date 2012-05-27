RailsReferenceV323::Application.routes.draw do
  resources :messages
  root to: "messages#new"
end
