ActiveAdmin.register Post do

	permit_params :title, :content, :tag_list

	form do |f|
		f.inputs "Post" do
			f.input :title
			f.input :content
			f.input :tag_list
		end
		f.actions
	end
end