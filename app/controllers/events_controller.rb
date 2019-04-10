class EventsController < ApplicationController
  def create
		@event = Event.new(event_params)
		render json: @event
  end

	def index
	  @event = Event.all
		render json: @event
	end
	 
	def show
	  @event = Event.find_by(id: params[:id])
		render json: @event
	end

  def update
		@event.update_attributes(params[:event])
		render json: @event
  end

  def destroy
		session[:event_id] = nil
    @event = Event.find(params[:id])
    @event.destroy
  end
end
