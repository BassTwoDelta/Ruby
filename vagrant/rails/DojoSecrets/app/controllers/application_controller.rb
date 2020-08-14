class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  helper_method :current_user
  def current_user
    User.find(session[:id])
  end 

  def require_login
  unless session[:id] 
    redirect_to '/sessions/new'
  end
  end
end
