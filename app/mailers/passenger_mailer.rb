class PassengerMailer < ApplicationMailer

  def thankyou_email(booking)
    @booking = booking
    @flight = booking.flight
    @passengers = booking.passengers
    recipients = @passengers.pluck(:email)

    mail to: recipients,
         subject: "Successful booking ticket(s)"
  end
end
