class Maraude < ApplicationRecord
  belongs_to :asso
  has_many :bookings, dependent: :destroy
  geocoded_by :address_start, latitude: :ltd_starts, longitude: :lng_starts
  after_validation :geocode, if: :will_save_change_to_address_start?
  after_validation :geocode_address_end, if: :will_save_change_to_address_end?
  after_validation :direction_json, if: :will_save_change_to_address_end? || :will_save_change_to_address_start?
  mount_uploader :photo, PhotoUploader

  def remaining_places
    self.capacity.to_i - self.bookings.size
  end

  private

  def geocode_address_end
    coordinates = Geocoder.search(address_end).first.coordinates
    self.ltd_ends = coordinates[0]
    self.lng_ends = coordinates[1]
  end

  def direction_json
    self.direction = JSON.parse(HTTP.get("https://api.mapbox.com/directions/v5/mapbox/walking/#{self.lng_starts},#{self.ltd_starts};#{self.lng_ends},#{self.ltd_ends}?steps=true&access_token=#{ENV['MAPBOX_API_KEY']}").body)
  end


end
