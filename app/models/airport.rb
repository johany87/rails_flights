class Airport < ApplicationRecord
  belongs_to :city, class_name: "City"
end
