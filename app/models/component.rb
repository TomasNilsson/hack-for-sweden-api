class Component < ApplicationRecord
  belongs_to :area

  # disable STI to allow columns named "type"
  self.inheritance_column = :_type_disabled
end
