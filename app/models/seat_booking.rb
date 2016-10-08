class SeatBooking < ActiveRecord::Base
	belongs_to :seat
	belongs_to :booking
	
	validates :type, presence: true
	validates :price, presence: true
end
