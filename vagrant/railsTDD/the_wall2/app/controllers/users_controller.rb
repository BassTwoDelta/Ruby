class UsersController < ApplicationController
    
    def index
        redirect_to new_user_path
    end
    
    def new
    end

    def destroy
        session.clear
        redirect_to new_user_path
    end

    def login
        if @user = User.find_by(username: params[:user][:username])
            session[:user_id] = @user.id
            redirect_to messages_path

        else 
        @User = User.new
        @User.username = params[:user][:username]
        unless @User.save
            flash[:errors] = @User.errors.full_messages
            redirect_to new_user_path
        else
            session[:user_id] = @user.id
            redirect_to messages_path
        end
    end
    end
end
