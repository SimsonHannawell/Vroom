class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews



  validates :make, presence: true
  validates :model, presence: true
  validates :transmission, inclusion: { in: ['Manual', 'Auto']}
  validates :fuel, inclusion: {in: ['Electric', 'Hybrid', 'Petrol', 'Diesel']}
  validates :year, presence: true
end
