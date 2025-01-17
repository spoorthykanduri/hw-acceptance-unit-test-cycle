Rottenpotatoes::Application.routes.draw do
  resources :movies
  match '/movies/:id/similar(.:format)', to: 'movies#similar', as: 'movie_similar', via: :get
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
