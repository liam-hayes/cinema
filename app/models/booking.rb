class Booking < ActiveRecord::Base
	belongs_to :screening
	belongs_to :person
	
	has_many :seat_bookings, dependent: :destroy
	
	def add_seat_bookings_from_cart(cart)
		cart.seat_bookings.each do |item|
			item.cart_id = nil
			seat_bookings << item
		end
	end
end