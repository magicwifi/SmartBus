# encoding:utf-8
class Take < ActiveRecord::Base
belongs_to :bus_number
belongs_to :passenger
belongs_to :site

end
