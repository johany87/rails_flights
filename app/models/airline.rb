class Airline < ApplicationRecord
  has_many :plane, class_name: "Plane"
  has_many :ticket, class_name: "Flight"
end
