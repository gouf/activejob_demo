class GuestUsersController < ApplicationController
  def index
    @guest_users = GuestUser.all
  end

  def new
  end

  def create
  end

  def partial
  end
end
