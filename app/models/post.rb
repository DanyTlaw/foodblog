class Post < ActiveRecord::Base
	has_many :post_images
	acts_as_taggable
	def getFeaturedImage
		self.post_images.each do |img|
			if img[:featured_image] 
				return img
			end		
		end

	end
end
