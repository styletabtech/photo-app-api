class User < ActiveRecord::Base
  include Authentication
  has_many :spots
  has_many :uploads
  has_many :photos
end
