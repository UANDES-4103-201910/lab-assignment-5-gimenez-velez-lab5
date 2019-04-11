class UsersController < ApplicationController
	def create
		@user = User.create(:name => params[:name], :lastname => params[:lastname], :email => params[:email], :password => params[:password], :address => params[:address])
		render json: @user
	end


	def index
	  @user = User.all
		render json: @user
	end
	 
	def show
	  @user = User.find_by(id: params[:id])
		render json: @user
	end

  def update
		@user.update_attributes(params[:user])
		render json: @user
  end

  def destroy
    session[:user_id] = nil
    @user = User.find(params[:id])
    @user.destroy
  end
end
