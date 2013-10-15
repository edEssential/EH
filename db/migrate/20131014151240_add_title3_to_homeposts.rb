class AddTitle3ToHomeposts < ActiveRecord::Migration
  def change
    add_column :homeposts, :title3, :string
  end
end
