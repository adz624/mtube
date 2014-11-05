class Movie::LikesController < ApplicationController
  # POST /movies/1/like
  def create
    Movie.increment_counter(:likes, params[:movie_id])
    redirect_to :back
  end

  # DELETE /movies/1/like
  def destroy
    Movie.decrement_counter(:likes, params[:movie_id])
    redirect_to :back
  end
end