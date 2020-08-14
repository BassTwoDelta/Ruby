class PostsController < ApplicationController
    layout "three_column", only: [:index]

    def index
        @posts = Post.all
        @users = User.all
    end

    def create
        unless Post.create(post_params)
            flash[:errors] = @post.errors.full_messages
            redirect_to '/posts'
        else 
            redirect_to '/posts'
        end
    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end
end
