class Photo < ActiveRecord::Base
  belongs_to :spot, inverse_of: :photos
  belongs_to :upload, inverse_of: :photos
  belongs_to :user
end
