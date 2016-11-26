class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_admin
  	if Admin.exists?(email: current_user.email)
  	else
  		redirect_to home_unauthorized_url
  	end
  end

end
