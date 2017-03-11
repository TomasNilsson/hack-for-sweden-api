class ComponentSerializer < ActiveModel::Serializer
  attributes :type, :title, :text, :value
end
