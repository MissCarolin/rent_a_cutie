class Cutie < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :name, presence: true
  validates :species, presence: true
  validates :description, presence: true
  validates :booking_rate, presence: true
end
