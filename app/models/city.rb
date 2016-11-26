class City < ApplicationRecord
  has_many :airports, class_name: "Airport"
end
