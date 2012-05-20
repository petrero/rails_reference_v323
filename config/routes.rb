RailsReferenceV323::Application.routes.draw do
  root to: "tickets#index"
  resources :tickets
end
