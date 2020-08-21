class LikesController < ApplicationController

  def create
      if user_has_liked
        redirect_to "/bright_ideas"
      else
        idea = Post.find(params[:id])
        like = Like.create(user: current_user, post: idea)
        like.save 
        redirect_to "/bright_ideas"
    end
  end

  def show
    @idea = Post.find(params[:id])
    @likes = Like.where(post: @idea)
  end

  private
    def user_has_liked
      Like.where(user_id: current_user.id, post_id: params[:id]).exists?
    end

end
