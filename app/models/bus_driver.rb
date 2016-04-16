# encoding:utf-8
class BusDriver < ActiveRecord::Base
belongs_to :bus_number
validates :name, presence: true, length: { maximum: 50 } 
  def running?
    if self.updated_at && Time.now-self.updated_at < 70
      return true;
    else
      return false;
    end 
  end
end
