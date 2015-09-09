# == Route Map
#
#            Prefix Verb   URI Pattern                       Controller#Action
#              root GET    /                                 articles#index
#         edit_user GET    /users/edit(.:format)             users#edit
#          articles GET    /articles(.:format)               articles#index
#                   POST   /articles(.:format)               articles#create
#       new_article GET    /articles/new(.:format)           articles#new
#      edit_article GET    /articles/:id/edit(.:format)      articles#edit
#           article GET    /articles/:id(.:format)           articles#show
#                   PATCH  /articles/:id(.:format)           articles#update
#                   PUT    /articles/:id(.:format)           articles#update
#                   DELETE /articles/:id(.:format)           articles#destroy
#            people GET    /people(.:format)                 people#index
#                   POST   /people(.:format)                 people#create
#        new_person GET    /people/new(.:format)             people#new
#       edit_person GET    /people/:id/edit(.:format)        people#edit
#            person GET    /people/:id(.:format)             people#show
#                   PATCH  /people/:id(.:format)             people#update
#                   PUT    /people/:id(.:format)             people#update
#                   DELETE /people/:id(.:format)             people#destroy
#     organisations GET    /organisations(.:format)          organisations#index
#                   POST   /organisations(.:format)          organisations#create
#  new_organisation GET    /organisations/new(.:format)      organisations#new
# edit_organisation GET    /organisations/:id/edit(.:format) organisations#edit
#      organisation GET    /organisations/:id(.:format)      organisations#show
#                   PATCH  /organisations/:id(.:format)      organisations#update
#                   PUT    /organisations/:id(.:format)      organisations#update
#                   DELETE /organisations/:id(.:format)      organisations#destroy
#             users GET    /users(.:format)                  users#index
#                   POST   /users(.:format)                  users#create
#          new_user GET    /users/new(.:format)              users#new
#              user GET    /users/:id(.:format)              users#show
#                   PATCH  /users/:id(.:format)              users#update
#                   PUT    /users/:id(.:format)              users#update
#                   DELETE /users/:id(.:format)              users#destroy
#             login GET    /login(.:format)                  session#new
#                   POST   /login(.:format)                  session#create
#                   DELETE /login(.:format)                  session#destroy
#            search GET    /search(.:format)                 search#index
#

Rails.application.routes.draw do
	root :to => 'articles#index'

	# search stuff
	get '/articles/results' => 'articles#results'
	get '/people/results' => 'people#results'
	get '/organisations/results' => 'organisations#results'

 
	  get '/users/edit' => 'users#edit', :as => :edit_user
 resources :articles, :people, :organisations
 resources :users, :except => [:edit] 
   get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end



