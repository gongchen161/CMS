Rails.application.routes.draw do
  get 'sections/index'
  get 'sections/show'
  get 'sections/new'
  get 'sections/edit'
  get 'sections/delete'
  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/edit'
  get 'pages/delete'
  #get 'subjects/index'
  #get 'subjects/show'
  #get 'subjects/new'
  #get 'subjects/edit'
  #get 'subjects/delete'

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
