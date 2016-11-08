class Spot < ActiveRecord::Base
  has_many :users, through: :photos
  has_many :photos
end
