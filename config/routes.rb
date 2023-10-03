Rails.application.routes.draw do
  get("/", :controller => "user", :action => "index")
  get("/users", :controller => "user", :action => "index")
  post("/add_user", :controller => "user", :action => "create_user")
  post("/update_user/:user_name", :controller => "user", :action => "update_user")
  get("/users/:user_name", :controller=> "user", :action => "show")
  get("/photos", :controller => "photo", :action => "index")
  get("/delete_photo/:photo_id", :controller => "photo", :action => "delete")
  post("/insert_photo_record", :controller => "photo", :action => "add_photo")
  get("/photos/:id", :controller => "photo", :action => "show")
  post("/add_comment", :controller => "photo", :action => "add_comment")
  post("/update_photo/:photo_id", :controller => "photo", :action => "update_photo")

end
