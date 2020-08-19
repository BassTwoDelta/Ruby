class LikesController < ApplicationController
  def create
    @user = current_user
    @secret = Secret.find(params[:id])
    @like = Like.create(user: @user, secret: @secret)
    @like.save
    redirect_to "/secrets"
  end

  def destroy
    @user = current_user
    @secret = Secret.find(params[:id])
    @like = Like.find_by(user: @user, secret: @secret)
    @like.destroy
    redirect_to "/secrets"
  end
end
