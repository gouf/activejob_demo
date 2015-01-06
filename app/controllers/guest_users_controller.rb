class GuestUsersController < ApplicationController
  def index
    @guest_users = GuestUser.all
  end

  def new
    @guest_user = GuestUser.new
  end

  def create
  end

  def partial
  private

  def guest_user_params
    params.require(:guest_user).permit(:name, :email)
  end
end
