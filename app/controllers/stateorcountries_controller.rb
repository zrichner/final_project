class StateorcountriesController < ApplicationController
  def index
    @q = Stateorcountry.ransack(params[:q])
    @stateorcountries = @q.result(:distinct => true).includes(:cities, :users, :region).page(params[:page]).per(10)

    render("stateorcountries/index.html.erb")
  end

  def show
    @user = User.new
    @city = City.new
    @stateorcountry = Stateorcountry.find(params[:id])

    render("stateorcountries/show.html.erb")
  end

  def new
    @stateorcountry = Stateorcountry.new

    render("stateorcountries/new.html.erb")
  end

  def create
    @stateorcountry = Stateorcountry.new

    @stateorcountry.name = params[:name]
    @stateorcountry.region_id = params[:region_id]

    save_status = @stateorcountry.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/stateorcountries/new", "/create_stateorcountry"
        redirect_to("/stateorcountries")
      else
        redirect_back(:fallback_location => "/", :notice => "Stateorcountry created successfully.")
      end
    else
      render("stateorcountries/new.html.erb")
    end
  end

  def edit
    @stateorcountry = Stateorcountry.find(params[:id])

    render("stateorcountries/edit.html.erb")
  end

  def update
    @stateorcountry = Stateorcountry.find(params[:id])

    @stateorcountry.name = params[:name]
    @stateorcountry.region_id = params[:region_id]

    save_status = @stateorcountry.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/stateorcountries/#{@stateorcountry.id}/edit", "/update_stateorcountry"
        redirect_to("/stateorcountries/#{@stateorcountry.id}", :notice => "Stateorcountry updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Stateorcountry updated successfully.")
      end
    else
      render("stateorcountries/edit.html.erb")
    end
  end

  def destroy
    @stateorcountry = Stateorcountry.find(params[:id])

    @stateorcountry.destroy

    if URI(request.referer).path == "/stateorcountries/#{@stateorcountry.id}"
      redirect_to("/", :notice => "Stateorcountry deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Stateorcountry deleted.")
    end
  end
end
