class MoviesController < ApplicationController

  # GET /movies
  def index
    respond_to do |format|
      format.html
      format.js { @movies = Movie.where(published: true).page(params[:page]) }
    end
  end

  # GET /movies/1
  def show
    @movie = Movie.find(params[:id])
  end
end