class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :party
      t.string :email
      t.string :profile_pic
      t.string :password_digest

      t.timestamps
    end
  end
end
