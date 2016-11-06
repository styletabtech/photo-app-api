class AddAttachmentPhotoUploadToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :photo_upload
    end
  end

  def self.down
    remove_attachment :photos, :photo_upload
  end
end
