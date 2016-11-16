class CreatePassengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :full_name
      t.integer :gov_id
      t.string :country
      t.date :birthday
      t.timestamps
    end
  end
end
