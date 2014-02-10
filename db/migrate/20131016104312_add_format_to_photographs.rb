class AddFormatToPhotographs < ActiveRecord::Migration
  def change
    add_column :photographs, :format, :string
  end
end
