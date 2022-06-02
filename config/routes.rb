Rails.application.routes.draw do
  resources :teams
  resources :projects
  resources :tickets
  resources :roles
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    # Login / Logout Routes
    post '/login', to: 'sessions#login'
    delete '/logout', to: 'sessions#logout'
    get "/me", to: "users#showme"
  # Defines the root path route ("/")
  # root "articles#index"
end
