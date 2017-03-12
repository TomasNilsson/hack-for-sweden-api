class AreaDetailedSerializer < ActiveModel::Serializer
  attributes :id, :name, :label, :latitude, :longitude

  has_many :components
end
