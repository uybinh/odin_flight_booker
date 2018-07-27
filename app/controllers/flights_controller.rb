class FlightsController < ApplicationController
  def index
    @date_options = Flight.group("DATE(date)").count.map {|date, count| [date.strftime("%Y-%m-%d"), date.strftime("%Y%m%d")]}
    @origin = Airport.find_by(code: params[:from_code])
    @destination = Airport.find_by(code: params[:to_code])

    @date = Date.strptime(params[:date],"%Y%m%d")
    @flights = Flight.where(date: @date.all_day, from_airport: @origin, to_airport: @destination)
  end
end
