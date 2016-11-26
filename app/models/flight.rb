class Flight < ApplicationRecord
  belongs_to :origin_airport, class_name: "Airport", foreign_key: "origin_airport_id"
  belongs_to :destination_airport, class_name: "Airport", foreign_key: "destination_airport_id"
  has_many :itineraries, class_name: "FlightItinerary"
  has_many :planes, through: :itineraries
  belongs_to :airline, class_name: "Airline", foreign_key: "airline_id"
end
