class CreatePdetails < ActiveRecord::Migration
  def change
    create_table :pdetails do |t|
      t.string :title
      t.integer :photo_id

      t.timestamps
    end
  end
end
