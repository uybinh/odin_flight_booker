class FlightsController < ApplicationController
  def index
    @flight = Flight.new
    @airports = Airport.all
    @flights = Flight.all
  end
end
