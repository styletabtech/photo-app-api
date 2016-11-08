class SpotSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :description
end
