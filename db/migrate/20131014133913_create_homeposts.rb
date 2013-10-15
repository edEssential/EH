class CreateHomeposts < ActiveRecord::Migration
  def change
    create_table :homeposts do |t|

      t.timestamps
    end
  end
end
