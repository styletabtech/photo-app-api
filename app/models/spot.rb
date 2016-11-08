class Spot < ActiveRecord::Base
  belongs_to :user
  has_many :photo
end
