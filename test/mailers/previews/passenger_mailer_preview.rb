# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def thankyou_email
    booking = Booking.first
    PassengerMailer.thankyou_email(booking)
  end
end
