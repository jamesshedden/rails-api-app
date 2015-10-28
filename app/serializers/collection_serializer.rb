class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :created_at

  def id
    "CO#{object.id}"
  end

  def user
    "US#{object.user_id}"
  end
end
