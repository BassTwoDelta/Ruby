class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def login
    @user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    unless @user
      flash[:errors] = "Invalid Combination"
      redirect_to "/sessions/new"
    else 
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    end
  end
end
