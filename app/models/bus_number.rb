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

end
