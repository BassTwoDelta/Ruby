class EventsController < ApplicationController
  def index
    @events_in_state = Event.where(state: current_user.state)
    @event_in_other_states = Event.where.not(state: current_user.state)
  end

  def create
    event = Event.create(new_event_params)
    event.user_id = current_user.id
    event.save 
    redirect_to "/events"
  end

  private
    def new_event_params
      params.require(:event).permit(:name, :date, :location, :state)
    end
end
