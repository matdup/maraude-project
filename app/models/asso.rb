class Asso < ApplicationRecord
  belongs_to :user
  has_many :maraudes
end
