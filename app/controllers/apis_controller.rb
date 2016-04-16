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



end
