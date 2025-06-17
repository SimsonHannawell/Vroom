class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
