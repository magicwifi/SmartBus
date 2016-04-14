# encoding:utf-8
class Trash < ActiveRecord::Base
validates :phonenum, presence: true,
                    uniqueness: { case_sensitive: false, message: "该设备已经注>册" },
                    format: { with: /\d{11}/  }
validates :name, presence: true,
        uniqueness: { case_sensitive: false, message: "该设备已经注册" }


  def running?
    if self.updated_at && Time.now-self.updated_at < 70
      return true;
    else
      return false;
    end 
  end

end
