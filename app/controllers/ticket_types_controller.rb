class TicketTypesController < ApplicationController
  def create
		@ticket_type = Ticket_type.new(ticket_type_params)
  end

  def update
		@ticket_type.update_attributes(params[:ticket_type])
  end

  def destroy
		session[:ticket_type_id] = nil
    @ticket_type = Ticket_type.find(params[:id])
    @ticket_type.destroy
  end
end
