class GuestUsersController < ApplicationController
  def index
    @guest_users = GuestUser.all
  end

  def new
    @guest_user = GuestUser.new
  end

  def create
    @guest_user = GuestUser.new(guest_user_params)

    if @guest_user.save
      GuestsCleanupJob.set(wait: 10.seconds).perform_later(@guest_user)
      redirect_to root_path
    else
      # flash[:notice] = @guest_user.errors.full_messages
      flash[:notice] = @guest_user.errors.full_messages.to_sentence
      redirect_to new_guest_users_path
    end
  end

  def partial
  private

  def guest_user_params
    params.require(:guest_user).permit(:name, :email)
  end
end
