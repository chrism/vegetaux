class AddPhotoToVegetaux < ActiveRecord::Migration
  def self.up
    add_attachment :vegetaux, :photo
  end

  def self.down
    remove_attachment :vegetaux, :photo
  end
end
