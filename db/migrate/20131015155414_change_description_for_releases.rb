class ChangeDescriptionForReleases < ActiveRecord::Migration
  change_table :releases do |t|  
    t.change :description, :text 
  end
end
