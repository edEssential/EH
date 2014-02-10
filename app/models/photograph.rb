class Photograph < ActiveRecord::Base
  attr_accessible :photograph, :format
  
  has_attached_file :photograph, styles: {
    large: '645X645>',
    square: '310x310#'
  }
  
end
