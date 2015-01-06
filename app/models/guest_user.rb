class GuestUser < ActiveRecord::Base
  validates :name, length: { minimum: 3, maximum: 30 }, presence: true
end
