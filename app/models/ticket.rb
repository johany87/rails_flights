class Ticket < ApplicationRecord
  belongs_to :passenger, class_name: "Passenger"
  belongs_to :sale_order, class_name: "SaleOrder"
  belongs_to :flightItinerary, class_name: "FlightItinerary"
end
