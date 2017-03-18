class FlightController < ApplicationController
  def index
    flights        = Flight.all
    dates          = flights.map { |flight| flight.date }
    @dates         = dates.uniq.map { |date| [date.to_s, date]}
    if params[:airport]
      start_id       = params[:airport][:start_airport_id]
      end_id         = params[:airport][:start_airport_id]
      num_passengers = params[:num_passengers]
      date           = params[:flight_date]
      @valid_search  = start_id && end_id && num_passengers && date
      @found_flights = flight_search(start_id, end_id, date) if @valid_search
    end
  end

  def flight_search(start_id, end_id, date)
    if Flight.where("start_airport_id = ? AND end_airport_id = ? AND date = ?",
                    params[:airport][:start_airport_id], params[:airport][:end_airport_id],
                    params[:flight_date]).any?
      Flight.where("start_airport_id = ? AND end_airport_id = ? AND date = ?",
                    params[:airport][:start_airport_id], params[:airport][:end_airport_id],
                    params[:flight_date])
    else
      nil
    end
  end

  private
    def flight_params 
      params.require(:flight).permit(:flight_date, :num_passengers,
                                     airport_attributes: [:start_airport_id, :end_airport_id])
                                     
    end
end
