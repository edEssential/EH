class AddRightimageToReleases < ActiveRecord::Migration
  def self.up
    add_attachment :releases, :rightimage
  end

  def self.down
    remove_attachment :releases, :rightimage
  end
end
