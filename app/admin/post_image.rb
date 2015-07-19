ActiveAdmin.register PostImage do

	permit_params :image_url, :featured_image, :post_id

	form do |f|
		f.inputs "PostImage" do
			f.input :post_id, :label => 'Post', as: :select, collection: Post.all
     		f.input :image_url, as: :file
     		f.input :featured_image, as: :boolean
		end
		f.actions
	end
end