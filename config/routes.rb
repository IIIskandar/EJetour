Rails.application.routes.draw do

  


  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'pages#home'

  resources :articles
#  get "/articles" index
#  post "/articles"	create
#  delete "/articles" delete
#  get "/articles/:id" show
#  get "articles/new" new
#  get "/articles/:id/edit" edit
#  patch "/articles/:id" update
#  put "/articles/:id" update


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
