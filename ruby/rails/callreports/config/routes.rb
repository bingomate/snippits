Rails.application.routes.draw do
  
  resources :reports do
  collection { post :import }
 end

	root to: "reports#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
