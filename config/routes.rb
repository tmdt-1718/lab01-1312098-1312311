Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/about', to: 'welcome#about'

  resources :articles

  get 'signup', to: "users#new"
  #post 'users', to: 'users#create'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
  resources :comments

  
  get 'auth/:provider/callback', to: "sessions#create"


end
