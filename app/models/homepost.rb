class Homepost < ActiveRecord::Base
  attr_accessible :rightimage, :latestimage, :url1, :url2, :url3, :title1, :title2, :title3

    # This method associates the attribute ":avatar" with a file attachment
    has_attached_file :rightimage, styles: {
      thumb: '464x178>'
    }
    has_attached_file :latestimage, styles: {
      thumb: '306X306>'
    }
end
