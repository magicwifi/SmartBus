# encoding:utf-8
class BusNumber < ActiveRecord::Base
belongs_to :bus_route
has_one :bus_driver
validates :name,uniqueness: true, presence: true, length: { maximum: 50 } 


end
