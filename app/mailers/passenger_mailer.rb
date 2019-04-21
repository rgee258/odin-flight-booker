class PassengerMailer < ApplicationMailer
  default from: 'notifications@odinflights.com'

  def thank_you_email(passenger)
    @passenger = passenger
    mail(to: @passenger.email, subject: 'Thank You for Booking With Odin Flights')
  end
end
