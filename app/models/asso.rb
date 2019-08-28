class Asso < ApplicationRecord
  belongs_to :user
  has_many :maraudes
  mount_uploader :photo, PhotoUploader
end
