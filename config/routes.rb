Rails.application.routes.draw do
 
  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :subjects do
  	member do
  	  get :delete
  	end
  end

  resources :pages do
  	member do
  	  get :delete
  	end
  end

  resources :sections do
  	member do
  	  get :delete
  	end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
