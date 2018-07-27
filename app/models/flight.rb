class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings


  def self.all_dates
    self.group("DATE(date)").count.map {|date, count| [date.strftime("%Y/%m/%d"), date.strftime("%Y%m%d")]}
  end

  def formatted_date
    date.strftime("%Y%m%d")
  end

  def formatted2_date
    date.strftime("%Y-%m-%d")
  end

  def self.search(params)
    origin = Airport.find_by(code: params[:from_code])
    destination = Airport.find_by(code: params[:to_code])
    date = Date.strptime(params[:date],"%Y%m%d")
    self.where(date: date.all_day, from_airport: origin, to_airport: destination)
  end
end
