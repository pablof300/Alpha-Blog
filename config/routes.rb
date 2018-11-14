Rails.application.routes.draw do
  root "pages#home"

  get "about", to: "pages#about"
  get "portfolio/pablo", to: "portfolio#pablo"

  get "signup", to: "users#new"
  post "users", to: "users#create"

  resources :articles
  resources :users, except:[:new]
end
