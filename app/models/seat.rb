class Seat < ActiveRecord::Base
	belongs_to :screen
	has_many :seat_booking, dependent: :destroy
	
	validates :screen_id, presence: true
	validates :seat_number, presence: true
	validates :row, presence: true
end
