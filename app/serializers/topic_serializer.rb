class TopicSerializer < ActiveModel::Serializer
  attributes :id, :updated_at
  has_many :posts
end
