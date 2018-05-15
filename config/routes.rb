Rails.application.routes.draw do

  root 'statics#home'

  get 'statics/about'

  get 'statics/contact'

  resources :projects
  
  resources :declarations, only: [:create]
  resources :entries, only: [:create]
  mount Hyperloop::Engine => '/hyperloop'
end
