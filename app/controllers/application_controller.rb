class ApplicationController < ActionController::Base
  #configure_permitted_parameters :: just a name I gave
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # this syntax is from rails 5. older one wont work
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) #sign_up is name used for registration new
    devise_parameter_sanitizer.permit(:account_update, keys: [:name]) # account_update is the name that devise uses for edit registration
  end
end
