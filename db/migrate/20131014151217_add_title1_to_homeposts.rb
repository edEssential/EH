class AddTitle1ToHomeposts < ActiveRecord::Migration
  def change
    add_column :homeposts, :title1, :string
  end
end
