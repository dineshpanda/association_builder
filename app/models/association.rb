class Association < ApplicationRecord
  enum nature: {"direct"=>0, "indirect"=>1} 

  # Direct associations

  belongs_to :terminus_model,
             :class_name => "Model",
             :counter_cache => :terminating_associations_count

  belongs_to :origin_model,
             :class_name => "Model",
             :counter_cache => :originating_associations_count

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
