class PostsController < ApplicationController
    before_action :require_login
    def index
        @ideas = Post.joins("LEFT JOIN likes ON posts.id = likes.post_id").group(:id).order("count() desc")
    end

    def create
        @user = current_user
        @idea = Post.create(content: params[:post][:content], user: @user)
        @idea.save
        redirect_to '/bright_ideas'
    end

    def destroy
        idea = Post.find(params[:id])
        idea.destroy
        redirect_to '/bright_ideas'
    end

end
