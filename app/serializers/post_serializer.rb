class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :created_at
end
