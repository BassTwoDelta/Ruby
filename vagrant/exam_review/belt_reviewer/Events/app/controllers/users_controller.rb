class UsersController < ApplicationController

    def create
        @user = User.create(register_user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/events'
        else 
            flash[:errors] = @user.errors.full_messages
            redirect_to '/'
        end

    end

    def update
        @user = User.find(params[:id])
        @user.update_attributes(update_user_params)
        if @user.save
            redirect_to '/events'
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to "/user/#{params[:id]}/edit"
        end
    end

    private 
    def register_user_params
        params.require(:user).permit(:first_name, :last_name, :email, :location, :state, :password, :password_confirmation)
    end

    def update_user_params
        params.require(:user).permit(:first_name, :last_name, :email, :location, :state)
    end
end
