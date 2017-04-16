Rails.application.routes.draw do
  

  resources :reports do
  collection { post :import }
  collection { post :delete }
 end

get "run" , to: "reports#run"
get "outbound", to: "reports#outbound"
get "inbound", to: "reports#inbound"


	root to: "reports#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
