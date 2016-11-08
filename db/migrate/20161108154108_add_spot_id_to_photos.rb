class AddSpotIdToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :spot, index: true, foreign_key: true
  end
end
