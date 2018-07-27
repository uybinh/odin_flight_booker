class Booking < ApplicationRecord
  belongs_to :flight
  has_many :booking_informations, inverse_of: :passenger
  has_many :passengers, through: :booking_informations

  accepts_nested_attributes_for :passengers
end
