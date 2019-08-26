class Maraude < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address_start, latitude: :ltd_starts, longitude: :lng_starts
  after_validation :geocode, if: :will_save_change_to_address_start?
  after_validation :geocode_address_end, if: :will_save_change_to_address_end?

  private

  def geocode_address_end
    coordinates = Geocoder.search(address_end).first.coordinates
    self.ltd_ends = coordinates[0]
    self.lng_ends = coordinates[1]
  end
end
