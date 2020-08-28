class AddIdeaReferenceToModels < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :models, :ideas
    add_index :models, :idea_id
    change_column_null :models, :idea_id, false
  end
end
