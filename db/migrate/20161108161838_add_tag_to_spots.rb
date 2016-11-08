class AddTagToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :tag, :string
  end
end
