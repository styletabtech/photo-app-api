class Spot < ActiveRecord::Base
  belongs_to :user
  has_many :uploads, through: :photos
  has_many :photos
end
