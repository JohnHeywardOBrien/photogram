class Post < ActiveRecord::Base
  validates :image, presence: true
  
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  belongs_to :user
  
  # We're sharing images here, no need to really worry about 'image missing'
  
end
