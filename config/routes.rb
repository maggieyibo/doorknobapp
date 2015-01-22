Rails.application.routes.draw do

	# get '/listings' => 'listings#index'
	# get 'listings/new' => 'listings#new'

  
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  resources :listings
  resources :users 


  # root to: 'listings/index'

end
