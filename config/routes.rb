Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "home#index"
  resources:todos
  resources:users

  get "/signin" => "sessions#new", as: "new_sessions"
  post "/signin" => "sessions#create", as: "sessions"
  get "/signout" => "sessions#destroy"
end
