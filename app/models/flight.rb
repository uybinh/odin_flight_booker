class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def formatted_date
    date.strftime("%Y%m%d")
  end

  def formatted2_date
    date.strftime("%Y-%m-%d")
  end
end
