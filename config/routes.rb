Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/about', to: 'welcome#about'
end
