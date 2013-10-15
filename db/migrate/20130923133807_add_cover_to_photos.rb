class AddCoverToPhotos < ActiveRecord::Migration
  def self.up
      add_attachment :photos, :cover
    end

    def self.down
      remove_attachment :photos, :cover
    end
end
