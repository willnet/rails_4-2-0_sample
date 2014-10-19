class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.references :user, index: true, null: false
      t.string :address
      t.integer :sex

      t.timestamps null: false
    end
    add_foreign_key :users, :user_details
  end
end
