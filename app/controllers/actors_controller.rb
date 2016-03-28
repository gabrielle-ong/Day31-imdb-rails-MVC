class ActorsController < ApplicationController
    
    def show
    end
    
    def new
        @actor = Actor.new
    end
    
    def create
        @actor = Actor.create(actor_params)
    end
    
    def edit
    end
    
    def update
        @actor.update(actor_params)
    end
    
    Private
    
    def set_actor
        @actor = Actor.find(params[:id])
    end
    
    def actor_params
        params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
    end
    
end
