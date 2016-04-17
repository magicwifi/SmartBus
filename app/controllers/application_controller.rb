class ApplicationController < ActionController::Base
  include SessionsHelper
  include BusSessionsHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
 def logged_in_user
	unless logged_in? 
	flash[:danger] = "Please log in." 
        redirect_to login_url
	end
 end


 def bus_logged_in_user
	unless (bus_logged_in? or logged_in?) 
	flash[:danger] = "Please log in." 
        redirect_to login_url
	end
 end
end
