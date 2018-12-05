Rails.application.routes.draw do
  root "pages#home"

  get "about", to: "pages#about"
  get "portfolio/pablo", to: "portfolio#pablo"

  get "signup", to: "users#new"
  post "users", to: "users#create"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  resources :categories, except: [:destroy]
  resources :articles
  resources :users, except:[:new]
end
