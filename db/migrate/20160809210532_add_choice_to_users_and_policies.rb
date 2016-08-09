class AddChoiceToUsersAndPolicies < ActiveRecord::Migration[5.0]
  def change
  	  change_table :choices do |t|
	      t.belongs_to :user, index: true
	      t.belongs_to :policy, index: true
	  end
  end
end
