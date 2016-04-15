# encoding:utf-8
class SitesController < ApplicationController

def new
@site = Site.new
end

def show
@site = Site.find(params[:id])
end

def index
 @sites = Site.all
end

def edit
 @site = Site.find(params[:id])
end

def update
@site = Site.find(params[:id])
site_params
place = params[:site][:position].to_s
result = Site.query_lat_long(place)
if result
if @site.update_attributes(result)
flash[:success] = "更新成功!"
redirect_to sites_url
else
render 'edit' 
end
else
flash[:danger]="请输入有效的地址"
render 'edit' 
end
end


def destroy
        Site.find(params[:id]).destroy
        flash[:success] = "删除成功"
        redirect_to sites_url
end


def create
site_params
place = params[:site][:position].to_s
postion = Site.query_lat_long(place)
@site = Site.new(postion) 
	if @site.save
	flash[:success] = "添加成功!"
	redirect_to sites_url
else
flash[:danger]="请输入有效的地址"
render 'new' 
end
end

private 
def site_params
  params.require(:site).permit(:position)
end
end
