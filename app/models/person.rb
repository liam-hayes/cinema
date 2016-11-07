class Person < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone, presence: true
	validates :password_digest, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	has_secure_password
end