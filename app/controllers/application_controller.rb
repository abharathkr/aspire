class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_admin
  	authenticate_user!
  	if Admin.exists?(email: current_user.email)
  	else
  		redirect_to home_unauthorized_url
  	end
  end

end
