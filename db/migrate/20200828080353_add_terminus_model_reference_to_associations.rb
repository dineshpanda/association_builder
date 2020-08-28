class AddTerminusModelReferenceToAssociations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :associations, :models, column: :terminus_model_id
    add_index :associations, :terminus_model_id
    change_column_null :associations, :terminus_model_id, false
  end
end
