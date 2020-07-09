class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end
 
    def create
        @user = User.find_by(username: params[:username])
    
        return head(:forbidden) unless @user.authenticate(params[:password])
    
        session[:user_id] = @user.id
      end

    def destroy
        session.delete :name 
    end
end
