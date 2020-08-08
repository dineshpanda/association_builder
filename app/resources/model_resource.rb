class ModelResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :idea_id, :integer

  # Direct associations

  has_many   :direct_terminating_associations,
             resource: AssociationResource,
             foreign_key: :terminus_model_id

  has_many   :direct_originating_associations,
             resource: AssociationResource,
             foreign_key: :origin_model_id

  has_many   :terminating_associations,
             resource: AssociationResource,
             foreign_key: :terminus_model_id

  has_many   :originating_associations,
             resource: AssociationResource,
             foreign_key: :origin_model_id

  # Indirect associations

end
