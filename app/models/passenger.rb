class Passenger < ApplicationRecord
  has_many :ticket, class_name: "Ticket"
end
