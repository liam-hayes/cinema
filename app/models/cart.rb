class Cart < ActiveRecord::Base
	has_many :seat_bookings, :dependent => :destroy
	
	def add_seat(seat_id)
		current_item = seat_bookings.new(seat_id: seat_id, price: 10)
		current_item
	end
end
