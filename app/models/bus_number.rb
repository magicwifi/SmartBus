# encoding:utf-8
class BusNumber < ActiveRecord::Base
belongs_to :bus_route
has_one :bus_driver
has_many :passengers
has_many :reservations
has_many :takes
validates :name,uniqueness: true, presence: true, length: { maximum: 50 } 


end
