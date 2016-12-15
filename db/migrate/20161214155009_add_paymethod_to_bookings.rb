class AddPaymethodToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :paymethod, :string
  end
end
