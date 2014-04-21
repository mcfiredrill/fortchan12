class AddPhotoAttachmentToPost < ActiveRecord::Migration
  def change
    add_attachment :posts, :photo
  end
end
