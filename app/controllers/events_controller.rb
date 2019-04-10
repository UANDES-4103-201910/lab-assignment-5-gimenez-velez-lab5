class EventsController < ApplicationController
  def create
		@event = Event.new(user_params)
  end

  def update
		@event.update_attributes(params[:event])
  end

  def destroy
		session[:event_id] = nil
    @event = Event.find(params[:id])
    @event.destroy
  end
end
