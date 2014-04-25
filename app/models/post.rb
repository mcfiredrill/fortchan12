class Post < ActiveRecord::Base
  has_attached_file :photo, styles: { thumb: "300x300>" }, default_url: ''
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  validate :validates_photo_or_post
  validates_presence_of :topic_id
  belongs_to :topic, touch: true

  def validates_photo_or_post
    if body.blank? && photo_file_name.blank?
      # TODO: remove all foliage terminology leftover from fort-tree 1.
      errors.add(:leaf, "must have text or a picture, why would you want to make a
        blank post? ;3")
    end
  end
end
