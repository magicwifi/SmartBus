# encoding:utf-8
class BusNumber < ActiveRecord::Base
belongs_to :bus_route
has_one :bus_driver
has_many :passengers
has_many :reservations
has_many :takes
validates :name,uniqueness: true, presence: true, length: { maximum: 50 } 

def start_datetime
    if Time.now.hour > self.start_time
	 DateTime.new(Time.now.year,Time.now.month,Time.now.day+1,self.start_time,0,0,'+8')
    else
	 DateTime.new(Time.now.year,Time.now.month,Time.now.day,self.start_time,0,0,'+8')
    end
end

def today_passenger
passengers = [];
self.reservations.each do |reservation|
	if reservation.created_at > self.start_datetime.yesterday 
		passengers << reservation
	end
end
passengers
end

def in_rate
 (self.today_passenger.length / self.capacity.to_f).round(4)*100
end

def in_number
 self.today_passenger.length
end

def left
 self.capacity - self.in_number
end


def self.fetchgps(params)
busnumber = BusNumber.find(params[:bus_number_id])
if busnumber.nil? or busnumber.bus_driver.nil?
	{:check=>false, :code=>400,:msg=>"Not Found Doctor"}
else
  driver = busnumber.bus_driver
  result= {:lat=>driver.lat_now,:lng=>driver.long_now,:running=>driver.running?}
{:check=>true, :result=>result}
end
end

def self.show_bus_all
	drivers = []
	routes = []
	bus_numbers = BusNumber.all
	bus_numbers.each do |bn|
		if bn.bus_driver.nil? or bn.bus_route.nil?
			
		else
  			bd = bn.bus_driver
  			driver= {:lat=>bd.lat_now,:lng=>bd.long_now,:running=>bd.running?,:name=>bd.name,:bus_number_id=>bn.id}
			drivers << driver
			
			site_positions =[]
  			sites = bn.bus_route.sites
			sites.each do |site|
				site_positions << Site.find(site).position
			end
			route = {:bus_number_id=>bn.id,:sites => site_positions}
			routes << route
		end
	end
	
	{ :check=>true, :bus_numbers=>bus_numbers,:drivers=>drivers,:routes=>routes }
end


def self.show_bus_detail(params)
bn = BusNumber.find(params[:bus_number_id])
if bn.nil? or bn.bus_driver.nil? or bn.bus_route.nil?
	{:check=>false, :code=>400,:msg=>"Not Found"}
else
  	bd = bn.bus_driver
  	driver= {:lat=>bd.lat_now,:lng=>bd.long_now,:running=>bd.running?,:name=>bd.name,:bus_number_id=>bn.id}
	
	site_positions =[]
  	sites = bn.bus_route.sites
	sites.each do |site|
		site_positions << Site.find(site).position
	end
	route = {:bus_number_id=>bn.id,:sites => site_positions}
	{ :check=>true, :bus_number=>bn,:driver=>driver,:route=>route }
	
end

end



end



