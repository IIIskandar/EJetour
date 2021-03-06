Rails.application.routes.draw do

  

	resources :chatrooms do
  		resource :chatroom_users
  		resources :messages

  	end

	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	root to: 'pages#home'



	resources :articles


	#  get "/articles" index
	#  post "/articles"	create
	#  delete "/articles/:id" delete
	#  get "/articles/:id" show
	#  get "articles/new" new
	#  get "/articles/:id/edit" edit
	#  patch "/articles/:id" update
	#  put "/articles/:id" update
	
  	# Serve websocket cable requests in-process
	mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
