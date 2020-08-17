class SessionsController < ApplicationController

  skip_before_action :require_login
  
  def new
  end

  def create
    if @user = User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password])
      session[:id] = @user.id
    redirect_to '/users'
  end

  def destroy
    session.clear
    redirect_to '/sessions/new'
  end
end
