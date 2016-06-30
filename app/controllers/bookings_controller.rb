class BookingsController < ApplicationController
  def new



    @passenger = Passenger.new
    @flight_id = params[:flight_id]
    @flight = Flight.find(@flight_id)


  end

  def create
  end
end
