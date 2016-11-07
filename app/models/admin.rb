class Admin < ActiveRecord::Base
	validates :emp_number, presence: true
	validates :emp_number, uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :password_digest, presence: true
	has_secure_password
end
