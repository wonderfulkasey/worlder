class WorldsController < ApplicationController
   def show
    @world = World.find(params[:id])
   end

    def new
    end

    def create
        @world = World.new(world_params)
 
        @world.save
        redirect_to @world
    end

    private
    def world_params
        params.require(:world).permit(:title, :text)
    end
end
