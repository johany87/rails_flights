class FlightItinerary < ApplicationRecord
  has_many :tickets, class_name: "Ticket"
  belongs_to :flight, class_name: "Flight", foreign_key: "fligth_id"
  belongs_to :plane, class_name: "Plane", foreign_key: "plane_id"
end
