class UsersController < ApplicationController
  def create
		@user = User.new(user_params)
  end

  def update
		@user.update_attributes(params[:user])
  end

  def destroy
    session[:user_id] = nil
    @user = User.find(params[:id])
    @user.destroy
  end
end
