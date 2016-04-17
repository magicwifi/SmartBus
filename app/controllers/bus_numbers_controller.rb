# encoding:utf-8
class BusNumbersController < ApplicationController
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

def destroy
        BusNumber.find(params[:id]).destroy
        flash[:success] = "删除成功"
        redirect_to sites_url
end

def new
@bus_number = BusNumber.new
end

def create
@bus_number = BusNumber.new(bus_number_params) 
if @bus_number.save
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
