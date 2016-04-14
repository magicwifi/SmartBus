# encoding:utf-8
class MetatrashesController < ApplicationController
before_action :logged_in_user

def new
@metatrash = Metatrash.new
end

def show
@metatrash = Metatrash.find(params[:id])
end

def detail
@metatrash = Metatrash.find(params[:id])
end

def index
 @metatrashes = Metatrash.all
end

def create
@metatrash = Metatrash.new(metatrash_params) 
if @metatrash.save
flash[:success] = "注册成功!"
redirect_to metatrashes_url
else
render 'new' 
end
end

private 

def metatrash_params
  params.require(:metatrash).permit(:name, :phonenum)
end

end
