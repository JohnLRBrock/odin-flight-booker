class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:num_passengers].to_i.times do
      @booking.passengers << Passenger.new
    end
  end
  def create
    @booking = Booking.create(flight_id: params[:flight].to_i)
    params[:num_passengers].to_i.times do |n|
      name = params[:booking][:passengers_attributes][n.to_s][:name]
      email = params[:booking][:passengers_attributes][n.to_s][:email]
      passenger = Passenger.create(name: name, email: email, booking_id: @booking.id)
      @booking.passengers << passenger
    end
    redirect_to booking_url(@booking)
  end
  def show
    if Booking.exists? params[:id]
      @booking = Booking.find params[:id]
      @flight = @booking.flight
    else
      redirect_to root_url
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:num_passengers, :flight,
                                      passenger_attributes: [:name, :email])
    end
end
