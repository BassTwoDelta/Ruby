class UsersController < ApplicationController
  
  layout 'two_column', only: [:index, :new]

  def index
    @users = User.all
  end

  def create
    unless User.create(user_params)
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    else
      redirect_to '/'
    end

  end

  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end
end
