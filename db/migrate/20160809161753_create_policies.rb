class CreatePolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :policies do |t|
      t.string :name
      t.string :left
      t.string :right

      t.timestamps
    end
  end
end
