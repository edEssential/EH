class AddLatestimageToHomeposts < ActiveRecord::Migration
  def self.up
    add_attachment :homeposts, :latestimage
  end

  def self.down
    remove_attachment :homeposts, :latestimage
  end
end
