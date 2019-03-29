Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :nodes do 
  	collection do 
  	end
  	member do
  		get "say_hi"
  	end
  	resources :edges
  end
  root 'nodes#index'
end
