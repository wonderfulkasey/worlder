class UserController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def show
    @user = User.find_by(id: params[:id])
        @worlds = @user.worlds
        @characters = @user.characters
  end

  def create
    User.create(user_params)
  end
 
  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
