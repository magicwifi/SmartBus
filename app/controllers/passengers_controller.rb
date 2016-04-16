# encoding:utf-8
class PassengersController < ApplicationController
before_action :logged_in_user

def new
@passenger = Passenger.new
end

def show
@passenger = Passenger.find(params[:id])
end

def index
 @passengers = Passenger.paginate(page: params[:page])
end

def edit
 @passenger = Passenger.find(params[:id])
end

def update
@passenger = Passenger.find(params[:id])
if @passenger.update_attributes(passenger_params)
redirect_to passengers_url
else
render 'edit' 
end
end


def destroy
        Passenger.find(params[:id]).destroy
        flash[:success] = "User deleted"
        redirect_to passengers_url
end


def create
@passenger = Passenger.new(passenger_params) 
if @passenger.save
flash[:success] = "注册成功!"
redirect_to passengers_url
else
render 'new' 
end
end

private 
def passenger_params
  params.require(:passenger).permit(:name,:password)
end


end
