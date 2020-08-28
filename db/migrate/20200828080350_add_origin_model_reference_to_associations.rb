class AddOriginModelReferenceToAssociations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :associations, :models, column: :origin_model_id
    add_index :associations, :origin_model_id
    change_column_null :associations, :origin_model_id, false
  end
end
