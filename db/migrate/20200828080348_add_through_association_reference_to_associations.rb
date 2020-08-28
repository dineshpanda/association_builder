class AddThroughAssociationReferenceToAssociations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :associations, :associations, column: :through_association_id
    add_index :associations, :through_association_id
    change_column_null :associations, :through_association_id, false
  end
end
