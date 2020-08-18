class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def logout
    session.clear
    redirect_to "/sessions/new"
  end
end
