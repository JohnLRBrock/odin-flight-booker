class PassengerMailer < ApplicationMailer
  default from: 'johnlrbrock@gmail.com'

  def thank_you_email(passenger, flight)
    @passenger = passenger
    @flight = flight
    @start = Airport.find(flight.start_airport_id)
    @end = Airport.find(flight.end_airport_id)
    mail(to: passenger.email, subject: 'Thank you for flying with us')
  end
end
