class AddSourceAssociationReferenceToAssociations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :associations, :associations, column: :source_association_id
    add_index :associations, :source_association_id
    change_column_null :associations, :source_association_id, false
  end
end
