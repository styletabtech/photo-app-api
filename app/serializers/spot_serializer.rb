class SpotSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :description, :user, :uploads, :photos

  def user
    object.user_id
  end

  def uploads
    object.uploads.pluck(:id)
  end

  def photos
    object.photos.pluck(:id)
  end
end
