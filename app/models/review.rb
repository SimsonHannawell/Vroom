class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :rating, presence: true
  validates :rating, numericality: [0..5]
end
