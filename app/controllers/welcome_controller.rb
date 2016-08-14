class WelcomeController < ApplicationController
	
	# Get homepage route
	def index
		@policy = Policy.find_by_id(1)
	end
	
	# Get about page route
	def about
	end
end
