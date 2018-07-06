#create a module not class
module DeviseWhitelistStrongparams
  extend ActiveSupport::Concern
  included do
      #configure_permitted_parameters :: just a name I gave
    before_action :configure_permitted_parameters, if: :devise_controller?
  end
  def configure_permitted_parameters
    # this syntax is from rails 5. older one wont work
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number]) #sign_up is name used for registration new
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_number]) # account_update is the name that devise uses for edit registration
  end

end
