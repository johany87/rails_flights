class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :itineraty_id
      t.string :sale_order_id
      t.string :passenger_id

      t.timestamps
    end
  end
end
