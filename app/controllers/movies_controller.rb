class MoviesController < ApplicationController
  def info
    @num_movies = Movie.all 
    render({ :template => "movie_templates/movies" })
  end

  def details
    @movie_id = params.fetch("an_id").to_i
    x_i = Movie.where({ :id => @movie_id})
    @x = x_i.at(0)
    render({ :template => "movie_templates/details" })
  end

end
