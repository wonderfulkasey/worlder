class CommentsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: 
    "secret", only: :destroy
    
    def create
        @world = World.find(params[:world_id])
        @comment = @world.comments.create(comment_params)
        redirect_to world_path(@world)
      end

      def destroy
        @world = World.find(params[:world_id])
        @comment = @world.comments.find(params[:id])
        @comment.destroy
        redirect_to world_path(@world)
      end
     
     
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
