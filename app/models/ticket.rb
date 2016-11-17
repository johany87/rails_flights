class Ticket < ApplicationRecord
  belongs_to :passenger, class_name: "Passenger", foreign_key: "passenger_id"
  belongs_to :sale_order, class_name: "SaleOrder", foreign_key: "sale_order_id"
  belongs_to :itinerary, class_name: "FlightItinerary", foreign_key: "itinerary_id"
end
