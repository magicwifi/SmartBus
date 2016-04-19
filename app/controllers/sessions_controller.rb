# encoding:utf-8
class SessionsController < ApplicationController
  def new
  end
  
  def create
	admin = Admin.find_by(name: params[:session][:name].downcase) 
        if admin && admin.authenticate(params[:session][:password])
	log_in admin
	redirect_to bus_numbers_url
	else
	flash[:danger] = '登陆失败' 
	render 'new' 
	end
  end
  
  def destroy 
    log_out
    redirect_to root_url
  end


end
