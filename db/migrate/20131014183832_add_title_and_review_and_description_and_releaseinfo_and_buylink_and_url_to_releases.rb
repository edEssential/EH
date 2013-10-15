class AddTitleAndReviewAndDescriptionAndReleaseinfoAndBuylinkAndUrlToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :title, :string
    add_column :releases, :review, :string
    add_column :releases, :description, :string
    add_column :releases, :releaseinfo, :string
    add_column :releases, :buylink, :string
    add_column :releases, :url, :string
  end
end
