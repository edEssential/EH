class Pdetail < ActiveRecord::Base
  attr_accessible :photo_id, :title, :photo
  belongs_to :photo

    # This method associates the attribute ":avatar" with a file attachment
    has_attached_file :photo, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>',
      square: '800x800>',
      rect: '920x658>'
      
    }
end
