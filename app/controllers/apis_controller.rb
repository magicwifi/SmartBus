# encoding:utf-8
class ApisController < ApplicationController
skip_before_filter :verify_authenticity_token

  def back_code(code,msg)
    respond_to do |format|
      format.html {render text: "Error#{code.to_s}-#{msg}"}
      format.json {render :json => {:status => {:code=>code.to_s, :message=>msg}}}
    end
  end
  

  def fetchgps
	check = BusNumber.fetchgps(params)
	if check[:check]
			render :json => {:code=>'200',:result =>check[:result]}
	else
			back_code(check[:code],check[:msg])
	end
  end

  def show_bus_detail
	check = BusNumber.show_bus_detail(params)
	if check[:check]
			render :json => {:code=>'200',:bus_number=>check[:bus_number],:driver=>check[:driver],:route=>check[:route],:startup=>check[:startup] }
	else
			back_code(check[:code],check[:msg])
	end
  end

  def login
	passenger = Passenger.find_by(name: params[:name].downcase) 
        if passenger && passenger.authenticate(params[:password])
		render :json => {:code=>'200',:passenger_id => passenger.id}
		
	else
			back_code('400','error')
	end
  end

  def update_driver
     begin
	name = params[:name]
	lng = params[:lng].to_f
	lat = params[:lat].to_f
	 busdriver = BusDriver.find_by(:name=>name)
         busdriver.update_columns(:long_now=>lng,:lat_now=>lat,:updated_at=>Time.now)
      rescue Exception => e
	logger.debug e
 	render :text => '{"result":400}'
	return;
      end
 	render :text => '{"result":200}'
     end

   def show_bus_all
		check = BusNumber.show_bus_all
		if check[:check]
			render :json => {:code=>'200',:bus_numbers=>check[:bus_numbers],:drivers=>check[:drivers],:routes=>check[:routes] }
		else
			back_code(400,'error')
		end
   end  



   def show_route_all
		check = BusRoute.show_route_all
		if check[:check]
			render :json => {:code=>'200',:routes=>check[:routes] }
		else
			back_code(400,'error')
		end
   end  

   def show_route_detail
		check = BusRoute.show_route_detail(params)
		if check[:check]
			render :json => {:code=>'200',:bus_numbers=>check[:bus_numbers],:site =>check[:site] }
		else
			back_code(400,'error')
		end
   end  

  def push_driver

pusher = IGeTui.pusher("5sdmXqjkpmACdA6VzMeVd6", "FnS4kKgD6V8IEZC9vsrIk8", "7Nb8oyKbpe9ZSyuuyamkW2")

pushtext  = params[:push].to_s
# 创建通知模板
template = IGeTui::NotificationTemplate.new
template.logo = 'push.png'
template.logo_url = 'http://www.igetui.com/wp-content/uploads/2013/08/logo_getui1.png'
template.title = '司机消息群发'
template.text = pushtext 

app_message = IGeTui::AppMessage.new
app_message.data = template
app_message.app_id_list = ["5sdmXqjkpmACdA6VzMeVd6"]
ret = pusher.push_message_to_app(app_message)




        flash[:success] = "推送成功"
        redirect_to bus_drivers_url
  end


  def push_passenger
pusher = IGeTui.pusher("m7jGDYVYi26ZIapBQboueA", "SBoibErAsK7xtMmauPTsj4", "qBG2kXM9GdAr6OpIdVGtG4")

pushtext  = params[:push].to_s
# 创建通知模板
template = IGeTui::NotificationTemplate.new
template.logo = 'push.png'
template.logo_url = 'http://www.igetui.com/wp-content/uploads/2013/08/logo_getui1.png'
template.title = '乘客消息群发'
template.text = pushtext 

app_message = IGeTui::AppMessage.new
app_message.data = template
app_message.app_id_list = ["m7jGDYVYi26ZIapBQboueA"]
ret = pusher.push_message_to_app(app_message)





        flash[:success] = "推送成功"
        redirect_to passengers_url
  end

end
