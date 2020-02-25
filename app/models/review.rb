class Review < ApplicationRecord
  belongs_to :booking
  validates :content, presence: true
  validates :title, presence: true
  validates :title, presence: true
end
