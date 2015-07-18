class AddFeaturedImageToPost < ActiveRecord::Migration
  def change
  	add_column :post_images, :featured_image, :boolean
  end
end
