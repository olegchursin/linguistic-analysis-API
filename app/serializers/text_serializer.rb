class TextSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :project
end
