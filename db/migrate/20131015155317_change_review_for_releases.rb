class ChangeReviewForReleases < ActiveRecord::Migration
  change_table :releases do |t|  
    t.change :review, :text 
  end
end
