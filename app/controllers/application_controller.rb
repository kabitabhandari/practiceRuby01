class ApplicationController < ActionController::Base
include DeviseWhitelistStrongparams

before_action :my_set_source #just name mysetsource

def my_set_source
  session[:mero_session] = params[:query] if params[:query] # if says if q is there as parameter do this.
#query just name it can be  like [:q], [:pot]etc
end


end
