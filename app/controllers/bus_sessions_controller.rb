class BusSessionsController < ApplicationController
  
  def new
  end
  
  def create
	bus_admin = BusAdmin.find_by(name: params[:bus_session][:name].downcase) 
        if bus_admin && bus_admin.authenticate(params[:bus_session][:password])
	bus_log_in bus_admin
	redirect_to bus_drivers_url
	else
	flash[:danger] = 'Invalid email/password combination' 
	render 'new' 
	end
  end
  
  def destroy 
    bus_log_out
    redirect_to root_url
  end
end
