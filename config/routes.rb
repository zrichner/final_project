Rails.application.routes.draw do
  # Routes for the Rolefunction resource:
  # CREATE
  get "/rolefunctions/new", :controller => "rolefunctions", :action => "new"
  post "/create_rolefunction", :controller => "rolefunctions", :action => "create"

  # READ
  get "/rolefunctions", :controller => "rolefunctions", :action => "index"
  get "/rolefunctions/:id", :controller => "rolefunctions", :action => "show"

  # UPDATE
  get "/rolefunctions/:id/edit", :controller => "rolefunctions", :action => "edit"
  post "/update_rolefunction/:id", :controller => "rolefunctions", :action => "update"

  # DELETE
  get "/delete_rolefunction/:id", :controller => "rolefunctions", :action => "destroy"
  #------------------------------

  # Routes for the Industry resource:
  # CREATE
  get "/industries/new", :controller => "industries", :action => "new"
  post "/create_industry", :controller => "industries", :action => "create"

  # READ
  get "/industries", :controller => "industries", :action => "index"
  get "/industries/:id", :controller => "industries", :action => "show"

  # UPDATE
  get "/industries/:id/edit", :controller => "industries", :action => "edit"
  post "/update_industry/:id", :controller => "industries", :action => "update"

  # DELETE
  get "/delete_industry/:id", :controller => "industries", :action => "destroy"
  #------------------------------

  # Routes for the Region resource:
  # CREATE
  get "/regions/new", :controller => "regions", :action => "new"
  post "/create_region", :controller => "regions", :action => "create"

  # READ
  get "/regions", :controller => "regions", :action => "index"
  get "/regions/:id", :controller => "regions", :action => "show"

  # UPDATE
  get "/regions/:id/edit", :controller => "regions", :action => "edit"
  post "/update_region/:id", :controller => "regions", :action => "update"

  # DELETE
  get "/delete_region/:id", :controller => "regions", :action => "destroy"
  #------------------------------

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
