class AddReviewsourceToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :review_source, :string
  end
end
