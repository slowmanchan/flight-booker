class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :origin_id
      t.integer :departure_id
      t.integer :duration
      t.string :datetime

      t.timestamps null: false
    end
  end
end
