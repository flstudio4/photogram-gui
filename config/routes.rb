Rails.application.routes.draw do
  get("/", :controller => "user", :action => "index")
  get("/users", :controller => "user", :action => "index")
  get("/users/:user_name", :controller=> "user", :action => "show")
  post("/add_user", :controller => "user", :action => "create_user")
  get("/photos", :controller => "photo", :action => "index")
  get("/photos/:id", :controller => "photo", :action => "show")
  post("/add_comment", :controller => "photo", :action => "add_comment")
  post("/update_photo/", :controller => "photo", :action => "update_photo")

end
