class PostSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :photo_url, :photo_thumb_url, :created_at

  def photo_url
    object.photo.url
  end

  def photo_thumb_url
    object.photo.url :thumb
  end
end
