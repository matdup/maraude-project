class Maraude < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address, latitude: :ltd_starts, longitude: :lng_starts
  after_validation :geocode, if: :will_save_change_to_address?

end
