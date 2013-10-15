class AddTitle2ToHomeposts < ActiveRecord::Migration
  def change
    add_column :homeposts, :title2, :string
  end
end
