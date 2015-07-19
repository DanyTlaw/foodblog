class PostImage < ActiveRecord::Base
  belongs_to :post
  mount_uploader :image_url, PostImageUploader
end
