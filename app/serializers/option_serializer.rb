class OptionSerializer < ActiveModel::Serializer
  attributes :id, :title, :collection, :created_at

  def id
    "OP#{object.id}"
  end

  def collection
    "CO#{object.collection_id}"
  end
end
