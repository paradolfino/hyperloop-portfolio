Rails.application.routes.draw do
  get 'projects/index'

  get 'projects/show'

  get 'projects/new'

  get 'projects/edit'

  root 'statics#home'

  get 'statics/about'

  get 'statics/contact'

  mount Hyperloop::Engine => '/hyperloop'
end
