class Booking < ApplicationRecord
  belongs_to :maraude
  belongs_to :user
end
