class Model < ApplicationRecord
  # Direct associations

  has_many   :indirect_terminating_associations,
             :class_name => "Association",
             :foreign_key => "terminus_model_id",
             :dependent => :destroy

  has_many   :indirect_originating_associations,
             :class_name => "Association",
             :foreign_key => "origin_model_id",
             :dependent => :destroy

  has_many   :direct_terminating_associations,
             :class_name => "Association",
             :foreign_key => "terminus_model_id",
             :dependent => :destroy

  has_many   :direct_originating_associations,
             :class_name => "Association",
             :foreign_key => "origin_model_id",
             :dependent => :destroy

  has_many   :terminating_associations,
             :class_name => "Association",
             :foreign_key => "terminus_model_id",
             :dependent => :destroy

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
