# encoding:utf-8
class BusRoutesController < ApplicationController

def show
@sites = []
 @bus_route = BusRoute.find(params[:id])
 @bus_route.sites.each do |site|
	@sites << Site.find(site)
 end 

end

def index
 @bus_routes = BusRoute.all
end

def destroy
        BusRoute.find(params[:id]).destroy
        flash[:success] = "删除成功"
        redirect_to sites_url
end


end
