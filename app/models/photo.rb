class Photo < ActiveRecord::Base
  attr_accessible :description, :setname, :cover
  has_many :pdetails

    # This method associates the attribute ":avatar" with a file attachment
    has_attached_file :cover, styles: {
      thumb: '100x100>',
      small: '200x200#',
      medium: '300x300>',
      square: '800x800>',
      rect: '920x658>'
      
    }
end
