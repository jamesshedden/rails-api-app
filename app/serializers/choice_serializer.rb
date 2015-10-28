class ChoiceSerializer < ActiveModel::Serializer
  attributes :id, :option, :collection

  def id
    "CH#{object.id}"
  end

  def option
    "OP#{object.option_id}"
  end

  def collection
    "CO#{object.collection_id}"
  end
end
