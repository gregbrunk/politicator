class User < ApplicationRecord
	has_secure_password
	has_many :choices
	
	# User validations
	validates_presence_of :first_name, :last_name, :location, :party, :email, :profile_pic, :password 
	validates :email, uniqueness: true
	validates :password, length: {minimum: 6}

	# Confirmation logic for user model
	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
