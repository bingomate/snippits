Rails.application.routes.draw do
  get 'cameras/index'

  resource :cameras

  root 'cameras#index'

  namespace :api, defaults: {format: :json} do

    namespace :v1 do

      get 'unlock_door/:door_id' => 'doors#unlock_door'
    end
end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
