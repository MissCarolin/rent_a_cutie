class Cutie < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :name, presence: true
  validates :species, presence: true
  validates :description, presence: true
  validates :booking_rate, presence: true
  geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_species,
    against: [ :name, :species ],
    using: {
      tsearch: { prefix: true }
    }

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end

