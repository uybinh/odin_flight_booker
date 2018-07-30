class Passenger < ApplicationRecord
  has_many :booking_informations, inverse_of: :passenger
  has_many :bookings, through: :booking_informations
  has_many :flights, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

end
