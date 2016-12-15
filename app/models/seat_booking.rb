class SeatBooking < ActiveRecord::Base
	belongs_to :seat
	belongs_to :booking
	belongs_to :cart
end
