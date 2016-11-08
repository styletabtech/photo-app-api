class PhotoSerializer < ActiveModel::Serializer
  attributes :id
  has_one :spot
  has_one :upload
end
