ActiveAdmin.register Post do

	permit_params :title, :content

	form do |f|
		f.inputs "Post" do
			f.input :title
			f.input :content
		end
		f.actions
	end
end