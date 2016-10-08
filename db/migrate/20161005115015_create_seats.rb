class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :screen_id
      t.integer :seat_number
      t.string :row

      t.timestamps null: false
    end
  end
end
