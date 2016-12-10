Rottenpotatoes::Application.routes.draw do
  resources :movies
   # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get 'movies/:id/same_director' => 'movies#same_director', as: :same_director
  #get '/movies/similar/:id', to: 'movies#find_similar_movies', as: :similar_movies
end
