class CommentsController < ApplicationController
    def create
        @world = World.find(params[:world_id])
        @comment = @world.comments.create(comment_params)
        redirect_to world_path(@world)
      end
     
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
