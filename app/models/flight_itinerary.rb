class FlightItinerary < ApplicationRecord
  has_many :ticket, class_name: "Ticket"
  belongs_to :flight, class_name: "Flight", foreign_key: "fligth_id"
end
