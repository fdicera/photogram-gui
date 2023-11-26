Rails.application.routes.draw do

  # name controller after the table plural, list of records index
  get("/users", { :controller => "users", :action => "index"})

  get("/users/:path_username", { :controller => "users", :action => "show"})

  get("/photos", { :controller => "photos", :action => "index"})

  get("/users/:path_username", { :controller => "users", :action => "show"})
end
