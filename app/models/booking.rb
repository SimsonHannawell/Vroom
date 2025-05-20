class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :dates, presence: true
end
