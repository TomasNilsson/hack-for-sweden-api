class AreaDetailedSerializer < ActiveModel::Serializer
  attributes :id, :name, :label

  has_many :components
end
