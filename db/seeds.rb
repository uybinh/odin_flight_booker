Airport.delete_all
Flight.delete_all

saigon = Airport.create!(code: "SGN", name: "Ho Chi Minh Airport")
incheon = Airport.create!(code: "ICH", name: "Icheon Airport")
flight_one = Flight.new(date: Time.zone.today)
flight_two = Flight.new(date: Time.zone.tomorrow)
flight_one.from_airport = saigon
flight_one.to_airport = incheon
flight_two.from_airport = incheon
flight_two.to_airport = saigon
flight_one.save
flight_two.save
