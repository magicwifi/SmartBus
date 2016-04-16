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

end

def index
 @bus_numbers = BusNumber.all
end

def destroy
        BusNumber.find(params[:id]).destroy
        flash[:success] = "删除成功"
        redirect_to sites_url
end
end
