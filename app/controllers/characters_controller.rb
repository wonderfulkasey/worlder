class CharactersController < ApplicationController

    def create
        @world = World.find(params[:world_id])
        @character = @world.characters.create(character_params)
        redirect_to world_path(@world)
      end
     
      private
        def character_params
          params.require(:character).permit(:character, :body)
        end

end
