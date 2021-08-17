class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  SPECIE = %w(chat chien poule)
end
