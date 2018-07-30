class BookingsController < ApplicationController
  def new
    @num_tickets = params[:num_tickets].to_i
    @booking = Booking.new(flight_id: params[:flight_id].to_i)
    @num_tickets.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking
    else
      puts @booking.errors.full_messages
      render :new
    end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
