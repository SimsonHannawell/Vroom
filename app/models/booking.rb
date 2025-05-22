class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :start_date, presence: true
  validates :end_date, presence: true

  # A booking that has been accepted
  scope :incoming, -> { where(accepted?: true) }

  # A booking that is still pending (not yet accepted)
  scope :pending, -> { where(accepted?: false) }
end
