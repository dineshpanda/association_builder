class AddUserReferenceToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :ideas, :users
    add_index :ideas, :user_id
    change_column_null :ideas, :user_id, false
  end
end
