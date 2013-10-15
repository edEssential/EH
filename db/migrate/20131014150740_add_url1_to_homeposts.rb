class AddUrl1ToHomeposts < ActiveRecord::Migration
  def change
    add_column :homeposts, :url1, :string
  end
end
