class UsersController < ApplicationController
  before_action :require_login

  def create
    @user = User.create(register_user_params)
    if @user.save
        session[:user_id] = @user.id
        redirect_to '/bright_ideas'
    else 
        flash[:errors] = @user.errors.full_messages
        redirect_to '/main'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def register_user_params
    params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end
end
