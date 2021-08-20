class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  # SPECIE for "rent your pet", to do later
  SPECIE = %w(chat chien poule poisson )

  geocoded_by :adress
  after_validation :geocode, if: :will_save_change_to_adress?
  validates :name, presence: true
  validates :age, presence: true
  validates :price, presence: true
  validates :specie, presence: true
  validates :adress, presence: true
  validates :photo, presence: true
  # validates :description, length: { minimum: 20,
  # too_short: "%{count} characters is the minimum allowed"
end
