class Ticket < ApplicationRecord
  belongs_to :passenger, class_name: "Passenger"
end
