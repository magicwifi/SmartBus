# encoding:utf-8
class TrashesController < ApplicationController
before_action :logged_in_user

def new
@trash = Trash.new
end

def show
@trash = Trash.find(params[:id])
end


def index
 @trashes = Trash.all
end

def create
@trash = Trash.new(trash_params) 
if @trash.save
flash[:success] = "注册成功!"
redirect_to trashes_url
else
render 'new' 
end
end

private 

def trash_params
  params.require(:trash).permit(:name, :phonenum)
end


end
