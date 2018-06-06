class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:city_id, :rolefunction_id, :industry_id, :stateorcountry_id, :region_id])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:city_id, :rolefunction_id, :industry_id, :stateorcountry_id, :region_id])
  end
end
