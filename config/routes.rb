Rails.application.routes.draw do
  root  "welcome#home"
  get 'about', to: "welcome#about"
  get 'signup', to: "users#new"
  resources :users, except: [:new]
  resources :articles
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  delete 'logout', to: "sessions#destroy"
end
