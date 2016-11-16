class SaleOrder < ApplicationRecord
  has_many :tickets, class_name: "Ticket"
  belongs_to :buyer, class_name: "Buyer"
end
