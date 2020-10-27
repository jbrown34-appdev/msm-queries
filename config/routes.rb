Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })
  

  get("/directors/eldest", { :controller => "directors", :action => "eldest_director" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest_director" })

  get("/directors/:director_id", { :controller => "directors", :action => "show_details" })
  
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:film_details", { :controller => "movies", :action => "movie_details" })

  get("/actors", { :controller => "actor", :action => "index" })
  get("/actors/:actor_id", { :controller => "actor", :action => "actor_details" })
  
end
