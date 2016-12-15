class AddTotalToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :total, :decimal
  end
end
