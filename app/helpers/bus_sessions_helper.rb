module BusSessionsHelper

def bus_log_in(user)
session[:user_id] = user.id 
end

  def current_bus_admin
      @current_bus_admin ||= BusAdmin.find_by(id: session[:user_id])
  end

  def bus_logged_in?
      !current_bus_admin.nil? 
  end

  def bus_log_out
        session.delete(:user_id)
	@current_user = nil 
  end
end
