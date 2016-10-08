class Screening < ActiveRecord::Base
	belongs_to :film
	belongs_to :screen
	has_many :bookings, dependent: :destroy
	
	validates :film_id, presence: true
	validates :screen_id, presence: true
	validates :date, presence: true
	validates :start_time, presence: true
end
