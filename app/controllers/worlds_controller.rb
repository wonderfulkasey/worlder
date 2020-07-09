class WorldsController < ApplicationController
    def index
        @worlds = World.all
    end
   
    def show
    @world = World.find(params[:id])
   end

    def new
        @world = World.new
    end

    def create
        @world = World.new(world_params)
 
        if @world.save
        redirect_to @world
        else
            render 'new'
        end
    end

    private
    def world_params
        params.require(:world).permit(:title, :text)
    end
end
