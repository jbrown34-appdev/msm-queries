class ActorController < ApplicationController
  def index
    @actor_list = Actor.all
    render({ :template => "/actor_pages/index.html.erb"})
  end
end