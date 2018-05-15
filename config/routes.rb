Rails.application.routes.draw do
  root 'statics#home'

  get 'statics/about'

  get 'statics/contact'

  mount Hyperloop::Engine => '/hyperloop'
end
