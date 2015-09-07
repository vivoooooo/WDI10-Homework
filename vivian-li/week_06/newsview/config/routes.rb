Rails.application.routes.draw do
	root :to => 'articles#index'
	  get '/users/edit' => 'users#edit', :as => :edit_user
 resources :articles, :people, :organisations, :users, :except => [:edit] 
   get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end


