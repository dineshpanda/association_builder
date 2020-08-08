class Association < ApplicationRecord
  enum nature: {"direct"=>0, "indirect"=>1} 

  # Direct associations

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
