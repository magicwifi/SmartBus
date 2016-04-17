# encoding:utf-8
class BusAdmin < ActiveRecord::Base
validates :name, presence: true, length: { maximum: 50 } 
validates :password, presence: true, length: { minimum: 6 }
has_secure_password

def BusAdmin.digest(string)
cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
BCrypt::Password.create(string, cost: cost) 
end

end
