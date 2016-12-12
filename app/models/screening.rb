class Screening < ActiveRecord::Base
	belongs_to :film
	belongs_to :screen
	has_many :bookings, dependent: :destroy
	
	validates :film_id, presence: true
	validates :screen_id, presence: true
	validates :date, presence: true
	validates :start_time, presence: true
	validates_format_of :start_time, :with => /\A([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]/i, :on => :create
	
	def self.search(query)
		where(" LIKE ?", "%#{query}%")
	end
end
