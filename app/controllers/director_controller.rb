class DirectorController < ApplicationController
  def info
    @num_directors = Director.all 
    render({ :template => "director_templates/director" })
  end
end
