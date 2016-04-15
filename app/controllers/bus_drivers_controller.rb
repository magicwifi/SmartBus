# encoding:utf-8
class BusDriversController < ApplicationController
before_action :logged_in_user

def new
@bus_driver = BusDriver.new
end

def show
@bus_driver = BusDriver.find(params[:id])
end

def index
 @bus_drivers = BusDriver.all
end

def edit
 @bus_driver = BusDriver.find(params[:id])
end

def update
@bus_driver = BusDriver.find(params[:id])
if @bus_driver.update_attributes(bus_driver_params)
redirect_to bus_drivers_url
else
render 'edit' 
end
end


def destroy
        BusDriver.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to bus_drivers_url
end


def create
@bus_driver = BusDriver.new(bus_driver_params) 
if @bus_driver.save
flash[:success] = "注册成功!"
redirect_to bus_drivers_url
else
render 'new' 
end
end

private 
def bus_driver_params
  params.require(:bus_driver).permit(:name)
end

end
