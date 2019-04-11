class TicketTypesController < ApplicationController
   def create
		@ticket_type = TicketType.new(ticket_type_params)
		render json: @ticket_type
  end

	def index
	  @ticket_type = TicketType.all
		render json: @ticket_type
	end
	 
	def show
	  @ticket_type = TicketType.find_by(id: params[:id])
		render json: @ticket_type
	end

  def update
		@ticket_type.update_attributes(params[:ticket_type])
		render json: @ticket_type
  end

  def destroy
		session[:ticket_type_id] = nil
    @ticket_type = TicketType.find(params[:id])
    @ticket_type.destroy
  end
end
