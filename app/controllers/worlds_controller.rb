class WorldsController < ApplicationController
    def new
    end

    def create
        render plain: params[:world].inspect
    end
end
