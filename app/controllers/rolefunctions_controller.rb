class RolefunctionsController < ApplicationController
  def index
    @rolefunctions = Rolefunction.all

    render("rolefunctions/index.html.erb")
  end

  def show
    @user = User.new
    @rolefunction = Rolefunction.find(params[:id])

    render("rolefunctions/show.html.erb")
  end

  def new
    @rolefunction = Rolefunction.new

    render("rolefunctions/new.html.erb")
  end

  def create
    @rolefunction = Rolefunction.new

    @rolefunction.name = params[:name]

    save_status = @rolefunction.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rolefunctions/new", "/create_rolefunction"
        redirect_to("/rolefunctions")
      else
        redirect_back(:fallback_location => "/", :notice => "Rolefunction created successfully.")
      end
    else
      render("rolefunctions/new.html.erb")
    end
  end

  def edit
    @rolefunction = Rolefunction.find(params[:id])

    render("rolefunctions/edit.html.erb")
  end

  def update
    @rolefunction = Rolefunction.find(params[:id])

    @rolefunction.name = params[:name]

    save_status = @rolefunction.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rolefunctions/#{@rolefunction.id}/edit", "/update_rolefunction"
        redirect_to("/rolefunctions/#{@rolefunction.id}", :notice => "Rolefunction updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Rolefunction updated successfully.")
      end
    else
      render("rolefunctions/edit.html.erb")
    end
  end

  def destroy
    @rolefunction = Rolefunction.find(params[:id])

    @rolefunction.destroy

    if URI(request.referer).path == "/rolefunctions/#{@rolefunction.id}"
      redirect_to("/", :notice => "Rolefunction deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Rolefunction deleted.")
    end
  end
end
