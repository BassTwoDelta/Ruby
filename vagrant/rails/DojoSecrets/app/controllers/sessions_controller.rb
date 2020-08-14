class SessionsController < ApplicationController

  skip_before_action :require_login
  
  def new
  end

  def create
    session[:id] = 1
    redirect_to '/users'
  end

  def destroy
    session.clear
    redirect_to '/sessions/new'
  end
end
