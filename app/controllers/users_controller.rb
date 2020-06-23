class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def destroy 
    @user = User.find(id: params[:id])
    @user.destroy
    redirect_to("/")
  end

end
