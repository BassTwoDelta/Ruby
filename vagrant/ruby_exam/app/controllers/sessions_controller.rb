class SessionsController < ApplicationController
  skip_before_action :require_login

  def index
    render layout: "login_reg"
  end

  def create
      @user = User.find_by(login_params)
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to "/bright_ideas"
      else
        flash[:login_errors] = "Invalid Email And Password Combination"
        redirect_to "/"
    end
  end

  def destroy
    session.clear
    redirect_to '/main'
  end

  private 
    def login_params
      params.require(:user).permit(:email)
    end

end
