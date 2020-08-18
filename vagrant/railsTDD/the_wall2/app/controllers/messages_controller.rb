class MessagesController < ApplicationController

    def index
        @user = User.find(session[:user_id])
        @post = Post.order('created_at DESC')
    end

    def create
        @user = User.find(session[:user_id])
        @post = Post.new 
        @post.content = params[:post][:content]
        @post.user_id = @user.id
        unless @post.save
            flash[:errors] = @post.errors.full_messages
            redirect_to messages_path
        else
        redirect_to messages_path
        end
    end

end
