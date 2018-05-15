Rails.application.routes.draw do

  root 'statics#home'

  get 'about' => 'statics#about'

  get 'contact' => 'statics#contact'

  resources :projects
  
  resources :declarations, only: [:create]
  resources :entries, only: [:create]
  mount Hyperloop::Engine => '/hyperloop'
end
