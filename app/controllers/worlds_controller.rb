class WorldsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:index]
    
    def index
        @worlds = World.all
    end
   
    def show
      @world = World.find(params[:id])
   end

    def new
        @world = World.new
    end

    def edit
        @world = World.find(params[:id])
    end

    def create
        @world = World.new(world_params)
 
        if @world.save
        redirect_to @world
        else
            render 'new'
        end
    end

    def update
        @world = World.find(params[:id])
       
        if @world.update(world_params)
          redirect_to @world
        else
          render 'edit'
        end
    end

    def destroy
        @world = World.find(params[:id])
        @world.destroy
       
        redirect_to worlds_path
      end

    private
    def world_params
        params.require(:world).permit(:title, :text)
    end
end
