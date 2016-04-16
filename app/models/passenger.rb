# encoding:utf-8
class Passenger < ActiveRecord::Base
validates :name, presence:true, length:{ maximum: 50 } 
has_secure_password
validates :password, presence:true, length:{ minimum: 6 }
belongs_to :bus_number
has_many :reservations
has_many :takes

def Passenger.digest(string)
cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
BCrypt::Password.create(string, cost: cost) 
end

end
