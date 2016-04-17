# encoding:utf-8
class BusRoutesController < ApplicationController

def show
 @sites = []
 @bus_route = BusRoute.find(params[:id])
 @bus_route.sites.each do |site|
	@sites << Site.find(site)
 end 
 @bus_numbers = @bus_route.bus_numbers 
end

def index
 @bus_routes = BusRoute.all
end

def destroy
        BusRoute.find(params[:id]).destroy
        flash[:success] = "删除成功"
        redirect_to bus_routes_url
end

def edit
 @bus_route = BusRoute.find(params[:id])
end

def update
@bus_route = BusRoute.find(params[:id])
if @bus_route.update_attributes(bus_route_params)
redirect_to bus_routes_url
else
render 'edit' 
end
end

private 
def bus_route_params
  params.require(:bus_route).permit(:name)
end

end
