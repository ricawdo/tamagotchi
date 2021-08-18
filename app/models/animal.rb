class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  # SPECIE for "rent your pet", to do later
  SPECIE = %w(chat chien poule poisson )

  geocoded_by :adress
  after_validation :geocode, if: :will_save_change_to_adress?
end
