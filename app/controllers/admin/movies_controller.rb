class Admin::MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /admin/movies
  def index
    @movies = Movie.all
  end

  # GET /admin/movies/new
  def new
    @movie = Movie.new
  end

  # POST /admin/movies
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to admin_movies_url, notice: 'Created movie success'
    else
      render :new
    end
  end

  # GET /admin/movie/1/edit
  def edit; end

  # PUT/PATCH /admin/movie/1
  def update
    if @movie.update(movie_params)
      redirect_to admin_movies_url, notice: 'Update movie success'
    else
      render :edit
    end
  end

  # DELETE /admin/movie/1
  def destroy
    @movie.destroy
    redirect_to :back, notice: ''
  end

  protected
  
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :describe, :published)
  end
end