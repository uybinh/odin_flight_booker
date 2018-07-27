class FlightsController < ApplicationController
  def index
    @date_options = Flight.all_dates
    @airports = Airport.all.map { |ap| [ap.code, ap.code] }
    @ticket_options = (1..4).map {|n| [n, n]}

    if params.include?(:date)
      @num_tickets = params[:num_tickets]
      @flights = Flight.search(params)
    end
  end
end
