class CreateSaleOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_orders do |t|
      t.string :buyer_id
      t.date :buy_date

      t.timestamps
    end
  end
end
