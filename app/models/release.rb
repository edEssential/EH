class Release < ActiveRecord::Base
  attr_accessible :title, :review, :description, :releaseinfo, :buylink, :url, :packshot, :rightimage, :review_source
  
  has_attached_file :rightimage, styles: {
    thumb: '464x178>'
  }
  has_attached_file :packshot, styles: {
    thumb: '306X306>'
  }
  
  auto_html_for :url do
    soundcloud(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
end
