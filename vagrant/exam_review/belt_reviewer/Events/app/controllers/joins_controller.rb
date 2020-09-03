class JoinsController < ApplicationController

  def create
    unless current_user.events_joined == Event.find(params[:id])
      Join.create(user: current_user, event: Event.find(params[:id]))
      redirect_to '/events'
    else
    redirect_to "/events"
  end
end
