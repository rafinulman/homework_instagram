Rails.application.routes.draw do
	# Landing page
		get("/", { :controller => "photos", :action => "index" })

	# Routes to READ photos
		get("/all_photos", { :controller => "photos", :action => "index" })
		get("/photo_details/:id", { :controller => "photos", :action => "show" })

	# Routes to CREATE photos
		get("/new_photo_form", { :controller => "photos", :action => "new_form" })
		get("/New_photo", { :controller => "photos", :action => "new_row"})

	# Routes to DESTROY photos
		get("/delete_photo/:id", {:controller => "photos", :action => "destroy"})

	# Routes to EDIT photos
		get("/edit_photo/:id", {:controller => "photos", :action => "edit_form"})
		get("/update_photo/:id", {:controller => "photos", :action => "update"})

end
