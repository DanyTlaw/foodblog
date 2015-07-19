class Post < ActiveRecord::Base
	has_many :post_images

	def getFeaturedImage
		self.post_images.each do |img|
			if img[:featured_image] 
				return img
			end		
		end

	end
end
