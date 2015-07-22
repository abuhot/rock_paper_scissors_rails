Rails.application.routes.draw do
  get("/rock", { :controller => "game", :action => "rock" })
end
