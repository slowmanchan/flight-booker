class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [airport.code, airport.id ]}

    @airport_origin = params[:origin_id]
    @airport_destination = params[:destination_id]
    @passengers = params[:passengers]
    
    @flights = Flight.where(origin_id: @airport_origin,
                            departure_id: @airport_destination)


  end
end
