class Airport < ActiveRecord::Base
  has_many :origin_flights,  class_name: "Flight", foreign_key: "origin_id"
  has_many :departure_flights, class_name: "Flight", foreign_key: "departure_id"
end
