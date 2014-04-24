class TopicSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :updated_at
  has_many :posts
end
