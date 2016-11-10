class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :user, :spot, :upload
  # has_one :spot
  # has_one :upload

  def user
    object.user_id
  end

  def spot
    object.spot_id
  end

  def upload
    object.upload_id
  end

end
