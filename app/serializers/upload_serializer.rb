class UploadSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :photos, :spots, :user, :editable
  # attributes :id, :image_url, :photos, :spots
  # has_one :user

  def user
    object.user_id
  end

  def editable
    scope == object.user
  end

  def spots
    object.spots.pluck(:id)
  end
end
