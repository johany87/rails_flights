class Plane < ApplicationRecord
  belongs_to :airline, class_name: "Airline"
end
