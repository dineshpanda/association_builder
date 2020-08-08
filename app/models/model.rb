class Model < ApplicationRecord
  # Direct associations

  has_many   :originating_associations,
             :class_name => "Association",
             :foreign_key => "origin_model_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
