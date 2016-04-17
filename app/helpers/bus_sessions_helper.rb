module BusSessionsHelper

def bus_log_in(user)
session[:bus_user_id] = user.id 
end

  def current_bus_admin
      @current_bus_admin ||= BusAdmin.find_by(id: session[:bus_user_id])
  end

  def bus_logged_in?
      !current_bus_admin.nil? 
  end

  def bus_log_out
        session.delete(:bus_user_id)
	@current_user = nil 
  end
end
