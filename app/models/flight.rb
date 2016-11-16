class Flight < ApplicationRecord
  has_many :flight_itinerary, class_name: "FlightItinerary"
  belongs_to :airline, class_name: "Airline", foreign_key: "airline_id"
  belongs_to :origin_airport, class_name: "Airport", foreign_key: "origin_airport_id"
  belongs_to :destination_airport, class_name: "Airport", foreign_key: "destination_airport_id"
end
