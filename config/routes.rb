Rails.application.routes.draw do

  root 'statics#home'

  get 'statics/about'

  get 'statics/contact'

  resources :projects
  mount Hyperloop::Engine => '/hyperloop'
end
