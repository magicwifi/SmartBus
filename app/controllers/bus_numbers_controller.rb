# encoding:utf-8
class BusNumbersController < ApplicationController
before_action :logged_in_user

def show
@sites = []
 @bus_number = BusNumber.find(params[:id])
 @bus_route = @bus_number.bus_route
 @bus_driver = @bus_number.bus_driver
 @bus_route.sites.each do |site|
	@sites << Site.find(site)
 end
 
 @reservations = @bus_number.reservations
 @takes = @bus_number.takes
 @in_rate = @bus_number.in_rate
 @in_number = @bus_number.in_number
 
end

def index
 @bus_numbers = BusNumber.all
end

def edit
 @bus_number = BusNumber.find(params[:id])
end

def update
@bus_number = BusNumber.find(params[:id])
if @bus_number.update_attributes(bus_number_params)
redirect_to bus_numbers_url
else
render 'edit' 
end
end

def destroy
        BusNumber.find(params[:id]).destroy
        flash[:success] = "删除成功"
        redirect_to bus_numbers_url
end

def new
@bus_number = BusNumber.new
end

def create
@bus_number = BusNumber.new(bus_number_params) 
if @bus_number.save
bus_driver = BusDriver.where(:bus_number_id=>nil).last
bus_driver.update_columns(:bus_number_id=>@bus_number.id)
flash[:success] = "添加成功!"
redirect_to bus_numbers_url
else
render 'new' 
end
end

private 
def bus_number_params
  params.require(:bus_number).permit(:name,:bus_route_id,:capacity,:start_time)
end

end
