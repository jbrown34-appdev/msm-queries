class ActorController < ApplicationController
  def index
    @actor_list = Actor.all
    render({ :template => "/actor_pages/index.html.erb"})
  end

  def actor_details
    id = params.fetch("actor_id")
    @actor = Actor.all.where({ :id => "#{id}"}).at(0)
    @credits = Character.all.where({ :actor_id => id})
        render({ :template => "/actor_pages/actor_bio.html.erb"})
  end

end