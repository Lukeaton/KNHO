# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        movies#reviews
#                admin_page GET    /movies/new(.:format)                                                                    movies#new
#                     users GET    /users(.:format)                                                                         users#index
#            movies_reviews GET    /movies/reviews(.:format)                                                                movies#reviews
#                pages_home GET    /pages/home(.:format)                                                                    pages#show
#             search_movies POST   /search/movies(.:format)                                                                 movies#search
#              fetch_movies POST   /fetch/movies(.:format)                                                                  movies#fetch
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                    movies GET    /movies(.:format)                                                                        movies#index
#                           POST   /movies(.:format)                                                                        movies#create
#                 new_movie GET    /movies/new(.:format)                                                                    movies#new
#                edit_movie GET    /movies/:id/edit(.:format)                                                               movies#edit
#                     movie GET    /movies/:id(.:format)                                                                    movies#show
#                           PATCH  /movies/:id(.:format)                                                                    movies#update
#                           PUT    /movies/:id(.:format)                                                                    movies#update
#                           DELETE /movies/:id(.:format)                                                                    movies#destroy
#                 directors GET    /directors(.:format)                                                                     directors#index
#                           POST   /directors(.:format)                                                                     directors#create
#              new_director GET    /directors/new(.:format)                                                                 directors#new
#             edit_director GET    /directors/:id/edit(.:format)                                                            directors#edit
#                  director GET    /directors/:id(.:format)                                                                 directors#show
#                           PATCH  /directors/:id(.:format)                                                                 directors#update
#                           PUT    /directors/:id(.:format)                                                                 directors#update
#                           DELETE /directors/:id(.:format)                                                                 directors#destroy
#                     lists GET    /lists(.:format)                                                                         lists#index
#                           POST   /lists(.:format)                                                                         lists#create
#                  new_list GET    /lists/new(.:format)                                                                     lists#new
#                 edit_list GET    /lists/:id/edit(.:format)                                                                lists#edit
#                      list GET    /lists/:id(.:format)                                                                     lists#show
#                           PATCH  /lists/:id(.:format)                                                                     lists#update
#                           PUT    /lists/:id(.:format)                                                                     lists#update
#                           DELETE /lists/:id(.:format)                                                                     lists#destroy
#                           GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                     login GET    /login(.:format)                                                                         session#new
#                           POST   /login(.:format)                                                                         session#create
#                           DELETE /login(.:format)                                                                         session#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do

  root :to => 'movies#reviews'
  get '/movies/new' => 'movies#new', :as => :admin_page
  get '/users' => 'users#index'
  get '/movies/reviews' => 'movies#reviews'
  get '/pages/home' => 'pages#show'

  post '/search/movies' => 'movies#search'
  post '/fetch/movies' => 'movies#fetch'

  delete '/users/:id(.:format)' => 'users#destroy'

  resources :movies
  resources :directors
  resources :lists
  resources :users
  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # perform a login
  delete '/login' => 'session#destroy' # perform a log out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
