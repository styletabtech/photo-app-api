class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :uploads, :spots

  def uploads
    object.uploads.pluck(:id)
  end

  def spots
    object.spots.pluck(:id)
  end
end
