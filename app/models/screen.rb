class Screen < ActiveRecord::Base
	has_many :screenings
	has_many :seats
	
	validates :screen_size, presence: true
	validates :name, presence: true
end
