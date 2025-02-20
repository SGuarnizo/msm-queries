Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "info" })
  get("/directors/:an_id", { :controller => "director", :action => "details" })
end
