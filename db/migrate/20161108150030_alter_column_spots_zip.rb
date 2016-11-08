class AlterColumnSpotsZip < ActiveRecord::Migration
  def self.up
    change_table :spots do |t|
      t.change :zip, :string
    end
  end
  def self.down
    change_table :spots do |t|
      t.change :zip, :integer
    end
  end
end
