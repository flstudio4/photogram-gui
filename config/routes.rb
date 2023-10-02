Rails.application.routes.draw do
  get("/", :controller => "user", :action => "index")
  get("/users", :controller => "user", :action => "index")
  get("/users/:username", :controller=> "user", :action => "show")
  get("/photos", :controller => "photo", :action => "index")
  get("/photos/:photo_id", :controller => "photo", :action => "show")

end
