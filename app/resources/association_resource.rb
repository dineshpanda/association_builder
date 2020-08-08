class AssociationResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :source_association_id, :integer
  attribute :through_association_id, :integer
  attribute :origin_model_id, :integer
  attribute :terminus_model_id, :integer
  attribute :foreign_key, :string
  attribute :nature, :integer_enum, allow: Association.natures.keys

  # Direct associations

  # Indirect associations

end
