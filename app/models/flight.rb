class Flight < ActiveRecord::Base
  belongs_to :origin, class_name: "Airport"
  belongs_to :departure, class_name: "Airport"

  has_many :bookings

end
