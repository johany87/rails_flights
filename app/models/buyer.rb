class Buyer < ApplicationRecord
  has_many :sale_order, class_name: "SaleOrder"
end
