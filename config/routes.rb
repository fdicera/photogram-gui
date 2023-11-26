Rails.application.routes.draw do

  # name controller after the table plural, list of records index
  get("/users", { :controller => "users", :action => "index"})
end
