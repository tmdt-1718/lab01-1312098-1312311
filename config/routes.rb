Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/about', to: 'welcome#about'

  resources :articles

  get 'signup', to: "users#new"
  #post 'users', to: 'users#create'
  resources :users, except: [:new]
end
