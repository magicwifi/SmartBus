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
   	Reservation.create!(:bus_number_id=>bus_number_id, :passenger_id=>passenger_id,:site_id=>site_id)
	passenger = Passenger.find(passenger_id)
        passenger.update_columns(:bus_number_id=>bus_number_id)
	left_passenger = BusNumber.find(bus_number_id).left
      rescue Exception => e
	logger.debug e
 	render :text => '{"result":400}'
	return;
      end
 	render :text => '预定成功，剩余座位'+left_passenger.to_s
     end

end
