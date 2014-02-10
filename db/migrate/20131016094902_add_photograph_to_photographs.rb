class AddPhotographToPhotographs < ActiveRecord::Migration
  def self.up
    add_attachment :photographs, :photograph
  end

  def self.down
    remove_attachment :photographs, :photograph
  end
end
