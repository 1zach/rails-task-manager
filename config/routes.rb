Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
resources :tasks

  get "index", to: "tasks#index"
  get "index/new", to: "tasks#new"
  get "index/:id", to: "tasks#show"
  post "index", to: "task#create"
  get "index/:id/edit", to: "task#edit"
  patch "index/:id", to: "task#update"
  delete "index/:id", to: "task#destroy"
  
end
