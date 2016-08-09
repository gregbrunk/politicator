class Choice < ApplicationRecord
	belongs_to :policy
	belongs_to :user
end
