class EventVenuesController < ApplicationController
  def create
		@event_venue = Event_venue.new(user_params)
  end

  def update
		@event_venue.update_attributes(params[:event_venue])
  end

  def destroy
		session[:event_venue_id] = nil
    @event_venue = Event_venue.find(params[:id])
    @event_venue.destroy
  end
end
