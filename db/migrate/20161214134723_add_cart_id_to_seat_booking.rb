class AddCartIdToSeatBooking < ActiveRecord::Migration
  def change
    add_column :seat_bookings, :cart_id, :integer
  end
end
