class User < ActiveRecord::Base
  include Authentication
  has_many :photos # dependent: :destroy
  has_many :spots, through: :photos
end
