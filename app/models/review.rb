class Review < ApplicationRecord
  belongs_to :booking
  validations :content, presence: true
  validations :title, presence: true
  validations :title, presence: true
end
