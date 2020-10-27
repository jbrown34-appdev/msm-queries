class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "/director_pages/index.html.erb"})
  end

 
  def eldest_director
    list_of_directors = Director.all.where.not({:dob => nil })
    ordered = list_of_directors.order({:dob => :asc})
    @oldest_director = ordered.at(0)
    render({ :template => "/director_pages/eldest.html.erb"})
  end

  def youngest_director
    list_of_directors = Director.all.where.not({:dob => nil })
    ordered = list_of_directors.order({:dob => :desc})
    @youngest_director = ordered.at(0)
    render({ :template => "/director_pages/youngest.html.erb"})
  end

  def show_details
    director_id = params.fetch("director_id")
    @this_director = Director.all.where({:id => "#{director_id}"}).at(0)
    render({ :template => "/director_pages/director_details.html.erb"})
  end

end 