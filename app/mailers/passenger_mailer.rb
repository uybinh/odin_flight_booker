class PassengerMailer < ApplicationMailer

  def thankyou_email(booking)
    @booking = booking
    @flight = booking.flight
    @passengers = booking.passengers

    mail to: -> { @passengers.pluck(:email) },
         subject: "Successful booking ticket(s)"
  end

end
