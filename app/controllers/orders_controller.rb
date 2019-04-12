class OrdersController < ApplicationController
	def most
		mostt=Order.select([:user_id, Order.arel_table[:id].count.as('totalTickets')]).order(:TotalTickets).reverse_order.group(:user_id).limit(1)
		cant=mostt[0].totalTickets
		id=mostt[0].user_id
		@topUser=User.find(id)
		render json: @topUser
  end
end
