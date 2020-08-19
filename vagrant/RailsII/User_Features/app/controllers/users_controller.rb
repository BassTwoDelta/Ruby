class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(new_user_params)
    if @user.valid? 
      redirect_to "/sessions/new"
    else 
      flash[:errors] = @user.errors.full_messages
      redirect_to '/users/new'
    end
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

  private
    def new_user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
