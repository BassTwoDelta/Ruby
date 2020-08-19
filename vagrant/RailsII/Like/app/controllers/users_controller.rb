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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(update_user_params)
    if @user.save
      redirect_to "/users/#{@user.id}"  
    else 
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/#{@user.id}/edit"
    end
  end

  def destroy 
    User.find(params[:id]).destroy
    session.clear
    redirect_to '/users/new'
  end

  def logout
    session.clear
    redirect_to "/sessions/new"
  end

  private
    def new_user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def update_user_params
      params.require(:user).permit(:name, :email)
    end
end
