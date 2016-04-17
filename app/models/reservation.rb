# encoding:utf-8
class Reservation < ActiveRecord::Base
belongs_to :bus_number
belongs_to :passenger
belongs_to :site

def can_cancel?
 bn = self.bus_number
 if Time.now > bn.start_datetime
        false
 else
        true
 end
end



end
