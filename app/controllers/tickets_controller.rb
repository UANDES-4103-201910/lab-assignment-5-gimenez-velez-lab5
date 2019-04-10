class TicketsController < ApplicationController
  def create
		@ticket = Ticket.new(ticket_params)
  end

  def update
		@ticket.update_attributes(params[:ticket])
  end

  def destroy
		session[:ticket_id] = nil
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  end
end
