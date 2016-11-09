class PhotoSerializer < ActiveModel::Serializer
  attributes :id
  has_one :spot
  has_one :upload

  def user
    object.user.id
  end
end
