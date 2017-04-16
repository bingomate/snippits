Rails.application.routes.draw do
  

resources :reports, :except => [:create, :new, :edit, :show, :update, :destroy] do
   collection { post :import }
   collection { post :delete }
   collection { get  :run }
   collection { get  :outbound }
   collection { get  :inbound }
   collection { get  :inboundtogroup }
end


	root to: "reports#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
