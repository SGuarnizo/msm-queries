class ActorsController < ApplicationController
  def info
    @num_actors = Actor.all 
    render({ :template => "actor_templates/actor" })
  end

  def details
    @actor_id = params.fetch("an_id").to_i
    x_i = Actor.where({ :id => @actor_id})
    @x = x_i.at(0)
    @character_array= Character.where({ :actor_id => @actor_id})
    render({ :template => "actor_templates/details" })
  end
end
