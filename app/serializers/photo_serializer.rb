class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :file_name
  has_one :user
end
