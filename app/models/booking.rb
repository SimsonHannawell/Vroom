class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :dates, presence: true

  scope :incoming, -> { where(status: "accepted") }
  scope :pending, -> { where(status: "pending") }
end

