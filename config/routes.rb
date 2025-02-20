Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "info" })
  get("/directors/:an_id", { :controller => "director", :action => "details" })
  get("/movies", { :controller => "movies", :action => "info" })
  get("/movies/:an_id", { :controller => "movies", :action => "details" })
  get("/actors", { :controller => "actors", :action => "info" })
  get("/actors/:an_id", { :controller => "actors", :action => "details" })
end
