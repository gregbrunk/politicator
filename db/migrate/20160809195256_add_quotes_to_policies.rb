class AddQuotesToPolicies < ActiveRecord::Migration[5.0]
   def change
	    change_table :policies do |t|
	      t.string :trump_quote
	      t.string :hillary_quote
	    end
   end
end
