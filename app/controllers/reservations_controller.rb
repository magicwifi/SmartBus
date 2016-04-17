# encoding:utf-8
class ReservationsController < ApplicationController
skip_before_filter :verify_authenticity_token

  def back_code(code,msg)
    respond_to do |format|
      format.html {render text: "Error#{code.to_s}-#{msg}"}
      format.json {render :json => {:status => {:code=>code.to_s, :message=>msg}}}
    end
  end

  def create
     begin
	bus_number_id = params[:bus_number_id].to_i
	passenger_id = params[:passenger_id].to_i
	site_id = params[:site_id].to_i
	passenger = Passenger.find(passenger_id)
	if passenger.bus_number_id == bus_number_id and !passenger.reservations.last.nil? and passenger.reservations.last.can_cancel?
 		render :text => '您已经预定过相同车次'
		return;
	else

	if  !passenger.reservations.last.nil? and passenger.reservations.last.can_cancel?
   		passenger.reservations.last.destroy
 	end	
        passenger.update_columns(:bus_number_id=>bus_number_id)
	Reservation.create!(:bus_number_id=>bus_number_id, :passenger_id=>passenger_id,:site_id=>site_id)
	left_passenger = BusNumber.find(bus_number_id).left
	end
      rescue Exception => e
	logger.debug e
 	render :text => '预定失败，参数错误'
	return;
      end
 	render :text => '预定成功，剩余座位'+left_passenger.to_s
     end
  
  def cancel
     begin
	bus_number_id = params[:bus_number_id].to_i
	passenger_id = params[:passenger_id].to_i
	site_id = params[:site_id].to_i
	reservation =  Reservation.where(bus_number_id:bus_number_id,passenger_id:passenger_id,site_id:site_id).last
        if reservation.nil? or !reservation.can_cancel?
	 	render :text => '没有当日预定，取消失败'
        	return;
	else
		reservation.destroy
	end
      rescue Exception => e
	logger.debug e
 	render :text => '取消失败，参数错误'
	return;
      end
 	render :text => '预定取消成功'
  
 end

end
