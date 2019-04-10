class UsersController < ApplicationController
  def create
		@user = User.new(user_params)
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
