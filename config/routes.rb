Rails.application.routes.draw do
  # Routes for the Stateorcountry resource:
  # CREATE
  get "/stateorcountries/new", :controller => "stateorcountries", :action => "new"
  post "/create_stateorcountry", :controller => "stateorcountries", :action => "create"

  # READ
  get "/stateorcountries", :controller => "stateorcountries", :action => "index"
  get "/stateorcountries/:id", :controller => "stateorcountries", :action => "show"

  # UPDATE
  get "/stateorcountries/:id/edit", :controller => "stateorcountries", :action => "edit"
  post "/update_stateorcountry/:id", :controller => "stateorcountries", :action => "update"

  # DELETE
  get "/delete_stateorcountry/:id", :controller => "stateorcountries", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
