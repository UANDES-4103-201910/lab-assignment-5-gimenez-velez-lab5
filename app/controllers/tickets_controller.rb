class TicketsController < ApplicationController
  def create
		@ticket = Ticket.new(ticket_params)
		render json: @ticket
  end

	def index
	  @ticket = Ticket.all
		render json: @ticket
	end
	 
	def show
	  @ticket = Ticket.find_by(id: params[:id])
		render json: @ticket
	end

  def update
		@ticket.update_attributes(params[:ticket])
		render json: @ticket
  end

  def destroy
		session[:ticket_id] = nil
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  end

	def join
		@jointable = Ticket.where("ticket_type_id=?",params[:id])
		render json: @jointable
	end
end
