class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :user_role_id

      t.timestamps null: false
    end
    add_index :assignments, :user_id
    add_index :assignments, :user_role_id
  end
end
