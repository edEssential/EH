class AddUrl2ToHomeposts < ActiveRecord::Migration
  def change
    add_column :homeposts, :url2, :string
  end
end
