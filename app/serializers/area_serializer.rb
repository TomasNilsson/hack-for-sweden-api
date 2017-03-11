class AreaSerializer < ActiveModel::Serializer
  attributes :id, :name

  def calculate
  	attributes :name
  end
end
