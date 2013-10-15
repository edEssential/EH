class AddUrl3ToHomeposts < ActiveRecord::Migration
  def change
    add_column :homeposts, :url3, :string
  end
end
