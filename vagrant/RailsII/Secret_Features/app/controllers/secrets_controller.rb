class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    @user = User.find(params[:id])
    @secret = Secret.create(content: params[:secret][:content], user: @user)
    @secret.save
    redirect_to "/users/#{params[:id]}"
  end

  def destroy
    @user = User.find(params[:user_id])
    Secret.find(params[:id]).destroy
    redirect_to "/users/#{@user.id}"
  end
end
