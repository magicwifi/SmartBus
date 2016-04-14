module MetatrashesHelper

  def convert_to_vol(battery)
      if  !battery.nil?
      	  battery.to_s+"V"
      else
      	 "未设定"
      end	
  end

    
  def convert_to_cur(current)
      if  !current.nil?
      	  current.to_s+"A"
      else
      	 "未定义"
      end	
  end

  def convert_to_temp(temp)
      if  !temp.nil?
      	  temp.to_s+"度"
      else
      	 "未定义"
      end	
  end

  def convert_to_status(status)
      if  status
	"有效"
      else
      	 "无效"
      end	
  end

  def convert_to_rssi(rssi)
      if  !rssi.nil?
	if rssi <10 
		"弱"
	elsif rssi >= 10 && rssi < 20
		"一般"
	else
		"强"
	end
      else
      	 "未定义"
      end	
  end

  def convert_to_battery(battery)
      if  battery
	"主充"
      else
      	 "副充"
      end	
  end

  def convert_to_work(work)
      if  work
	"启动"
      else
      	 "停止"
      end	
  end

end
