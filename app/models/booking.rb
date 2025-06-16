class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :start_date, presence: true
  validates :end_date, presence: true

  # A booking that has been accepted
  scope :confirmed, -> { where(accepted?: true) }

  # A booking that is still pending (not yet accepted)
  scope :pending, -> { where(accepted?: false) }

    def total_price
    return 0 unless start_date && end_date && car

    days = (end_date - start_date).to_i
    price_per_day = car.price_per_day || 0
    days * price_per_day
  end
  
end
