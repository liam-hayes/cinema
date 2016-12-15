class RenameTypeToTicketType < ActiveRecord::Migration
  def change
	rename_column :seat_bookings, :type, :ticket_type
  end
end
