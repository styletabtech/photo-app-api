class Photo < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo_upload,
            :styles => { :medium => "300x300>", :thumb => "100x100>" },
            :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo_upload, :content_type => /\Aimage\/.*\Z/


  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_photo_upload
    self.photo_upload.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  def photo_upload_url
    photo_upload.url
  end

  before_post_process :rename_photo_upload
end
