Rails.application.routes.draw do
  resources :teams
  resources :projects
  resources :tickets
  resources :roles
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Custom Routes

  # Login / Logout Routes
  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#logout"
  get "/me", to: "users#showme"
  # Create Routes
  post '/create_user', to: "users#create_user"
  post '/create_project', to: "projects#create_project"
  # Defines the root path route ("/")
  # root "articles#index"
end
