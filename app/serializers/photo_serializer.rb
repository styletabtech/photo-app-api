class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :file_name, :photo_upload_url
  has_one :user
end
