class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :file_name, :photo_upload_url, :editable
  has_one :user
  has_one :spot

  def editable
    scope == object.user
  end
end
