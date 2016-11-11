class UploadSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :photos, :spots, :user
  # attributes :id, :image_url, :photos, :spots
  # has_one :user

  def user
    object.user_id
  end

  def spots
    object.spots.pluck(:id)
  end
end
