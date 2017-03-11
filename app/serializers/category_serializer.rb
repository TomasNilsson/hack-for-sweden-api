class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :label, :left, :right
end
