class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :email
      t.integer :booking_id, null: false
      t.timestamps null: false
    end
  end
end
