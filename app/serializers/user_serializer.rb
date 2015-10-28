class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at

  def id
    "US#{object.id}"
  end
end
