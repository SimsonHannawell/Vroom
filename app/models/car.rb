class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews

  has_many_attached :images

  validates :make, presence: true
  validates :model, presence: true
  validates :transmission, inclusion: { in: ['Manual', 'Auto']}
  validates :fuel_type, inclusion: {in: ['Electric', 'Hybrid', 'Petrol', 'Diesel']}
  validates :year, presence: true
end
