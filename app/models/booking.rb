class Booking < ActiveRecord::Base
	belongs_to :screening
	belongs_to :person
	has_many :seat_bookings, dependent: :destroy
end