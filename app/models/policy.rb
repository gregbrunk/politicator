class Policy < ApplicationRecord
	has_many :choices

	def self.compatibility_check(user)
		# Variables
		@policies = Policy.all
		@user = user
		@choices = @user.choices
		
		# Defaults
		@trump_counter = 0
		@hillary_counter = 0
		@hillary_compatible = 0
		@trump_compatible = 0

		# Compatibility Math and Set Choices
		@policies.each do |policy|
			@hillary_choice = policy.hillary_choice
			@trump_choice = policy.trump_choice
			@user_choice = @choices.find_by policy_id: policy.id

			if @hillary_choice == @user_choice.choice
				@hillary_counter +=1
			end

			if @trump_choice == @user_choice.choice
				@trump_counter +=1
			end
		end

		@hillary_compatible = ((@hillary_counter.to_f / 12) * 100).floor
		@trump_compatible = ((@trump_counter.to_f / 12) * 100).floor
		
		return [@hillary_compatible, @trump_compatible, @hillary_counter, @trump_counter]
	end
end