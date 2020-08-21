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

    private 
    def register_user_params
        params.require(:user).permit(:first_name, :last_name, :email, :location, :state, :password, :password_confirmation)
    end
end
