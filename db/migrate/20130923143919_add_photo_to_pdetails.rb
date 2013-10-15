class AddPhotoToPdetails < ActiveRecord::Migration
  def self.up
    add_attachment :pdetails, :photo
  end

  def self.down
    remove_attachment :pdetails, :photo
  end
end
