class ActorsController < ApplicationController
  def info
    render({ :template => "actor_templates/actor" })
  end
end
