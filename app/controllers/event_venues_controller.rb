class EventVenuesController < ApplicationController
def create
		@event_venue = Event_venue.new(event_venue_params)
		render json: @event_venue
  end

	def index
	  @event_venue = Event_venue.all
		render json: @event_venue
	end
	 
	def show
	  @event_venue = Event.find_by(id: params[:id])
		render json: @event_venue
	end

  def update
		@event_venue.update_attributes(params[:event_venue])
		render json: @event_venue
  end

  def destroy
		session[:event_venue_id] = nil
    @event_venue = Event_venue.find(params[:id])
    @event_venue.destroy
  end
