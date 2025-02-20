class DirectorController < ApplicationController
  def info
    @num_directors = Director.all 
    render({ :template => "director_templates/director" })
  end

  def details
    @director_id = params.fetch("an_id").to_i
    x_i = Director.where({ :id => @director_id})
    @x = x_i.at(0)
    @movie_array= Movie.where({ :director_id => @director_id})
    render({ :template => "director_templates/details" })
  end

  def youngest
    @youngest= Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "director_templates/youngest" })
  end

  def eldest
    @eldest= Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_templates/eldest" })
  end

end
