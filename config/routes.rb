Rails.application.routes.draw do
  root "pages#home"
  
  get "about", to: "pages#about"
  get "portfolio/pablo", to: "portfolio#pablo"

  resources :articles
end
