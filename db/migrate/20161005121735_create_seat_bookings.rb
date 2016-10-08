class CreateSeatBookings < ActiveRecord::Migration
  def change
    create_table :seat_bookings do |t|
      t.integer :booking_id
      t.integer :seat_id
      t.string :type
      t.float :price

      t.timestamps null: false
    end
  end
end
