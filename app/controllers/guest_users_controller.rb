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
  end
end
