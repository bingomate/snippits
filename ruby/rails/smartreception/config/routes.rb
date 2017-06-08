Rails.application.routes.draw do
  get 'camera/index'

  resource :cameras

  root 'camera#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
