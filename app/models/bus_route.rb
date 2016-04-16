# encoding:utf-8
class BusRoute < ActiveRecord::Base
has_many :bus_numbers
serialize :sites
end
