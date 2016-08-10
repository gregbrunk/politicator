class AddCandidatesChoiceToPolicies < ActiveRecord::Migration[5.0]
  def change
	    change_table :policies do |t|
	      t.string :trump_choice
	      t.string :hillary_choice
	    end
   end
end