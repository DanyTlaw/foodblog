ActiveAdmin.register PostImage do

	permit_params :image_url

	form do |f|
		f.inputs "PostImage" do
     		f.input :image_url, as: :file
		end
		f.actions
	end
end