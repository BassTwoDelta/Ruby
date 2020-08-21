class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :require_login
  
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    if !session[:user_id]
      redirect_to "/"
    end
  end
end
