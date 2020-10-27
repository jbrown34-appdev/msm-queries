class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render({ :template => "/movies_pages/index.html.erb"})
  end

  def movie_details
    @movie_id = params.fetch("film_details")
    mid = @movie_id
    @this_movie = Movie.all.where({:id => "#{mid}"}).at(0)
    render({ :template => "/movies_pages/details.html.erb"})
  end

end 