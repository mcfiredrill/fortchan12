class Post < ActiveRecord::Base
  has_attached_file :photo, styles: { thumb: "300x300>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  belongs_to :topic
end
