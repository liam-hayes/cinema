class Film < ActiveRecord::Base
	has_many :screenings, dependent: :destroy
	
	validates :title, presence: true
	validates :run_time, presence: true
	#RATINGS = [G, PG, 12A, 15A, 16, 18]
	validates :rating, presence: true
	
	def self.search(query)
		where("title LIKE ?", "%#{query}%")
	end
end
