class AddRightimageToHomeposts < ActiveRecord::Migration
  def self.up
    add_attachment :homeposts, :rightimage
  end

  def self.down
    remove_attachment :homeposts, :rightimage
  end
end
