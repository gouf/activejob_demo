class GuestsCleanupJob < ActiveJob::Base
  queue_as :default

  def perform(guest_user_id)
    GuestUser.destroy(guest_user_id)
  end
end
