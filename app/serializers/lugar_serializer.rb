class LugarSerializer < ActiveModel::Serializer
  attributes :id, :nome, :latitude, :longitude
end
