class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cutie

  has_many :reviews
end
