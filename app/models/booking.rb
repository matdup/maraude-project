class Booking < ApplicationRecord
  belongs_to :maraude
  belongs_to :user

  after_save :check_status

  def check_status
    if self.maraude.capacity.to_i - self.maraude.bookings.size == 0
      self.maraude.update(status: "full")
    end
  end
end
