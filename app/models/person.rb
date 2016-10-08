class Person < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone, presence: true
	validates :password_digest, presence: true
	validates :email, presence: true
end
