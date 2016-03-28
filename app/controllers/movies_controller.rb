class MoviesController < ApplicationController


	before_action :set_movie, only: [:show, :edit, :update, :destroy]

	def index
		@movies = Movie.all
	end

	def show

	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
	end

	def edit

	end

	def update
		@movie.update(movie_params)
	end

	private

	def set_movie
		@movie = Movie.find(params[:id])
	end

	def movie_params
		params.require(:movie).permit(:title, :summary, :youtube_embeded_id, :thumbnail)
	end

end

