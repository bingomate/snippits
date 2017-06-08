Rails.application.routes.draw do
  get 'cameras/index'

  resource :cameras

  root 'cameras#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
