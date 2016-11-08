class UploadSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :photos, :spots
  has_one :user

  def user
    object.user.id
  end
end
