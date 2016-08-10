class WelcomeController < ApplicationController
	def index
		@policy = Policy.find_by_id(1)
	end
	
	def about
	end
end
