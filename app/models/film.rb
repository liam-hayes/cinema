class Film < ActiveRecord::Base
	has_many :screenings, dependent: :destroy
	
	
end
