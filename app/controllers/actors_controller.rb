class ActorsController < ApplicationController
	before_action :set_actor, only: [:show, :edit, :update, :destroy]

	def show

	end

	def new
		@actor = Actor.new
	end

	def create
		@actor = Actor.new(actor_params)
	end

	def edit

	end

	def update
		@actor.update(actor_params)
	end

	private

	def set_actor
		@actor = Actor.find(params[:id])
	end

	def actor_params
		params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
	end

end
