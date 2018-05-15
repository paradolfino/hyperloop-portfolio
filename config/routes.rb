Rails.application.routes.draw do

  root 'statics#home'

  get 'statics/about'

  get 'statics/contact'

  resources :projects
  
  get 'declarations' => 'declarations/#new'
  resources :declarations, only: [:create]
  mount Hyperloop::Engine => '/hyperloop'
end
