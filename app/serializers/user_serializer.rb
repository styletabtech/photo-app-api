class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :uploads

  def uploads
    object.uploads.pluck(:id)
  end
end
