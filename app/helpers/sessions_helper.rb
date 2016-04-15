module SessionsHelper

def log_in(user)
session[:user_id] = user.id 
end

  def current_user
      @current_user ||= Admin.find_by(id: session[:user_id])
  end

  def logged_in?
      !current_user.nil? 
  end

  def log_out
        session.delete(:user_id)
	@current_user = nil 
  end

def gravatar_for(driver)
	if driver.running?
        	image_tag("work.png", alt: driver.name, class: "gravatar", size:"52")
	else
        	image_tag("stop.png", alt: driver.name, class: "gravatar", size:"52")
	end	
end

def gravatar_title_for(trash)
	if trash.running?
        	image_tag("work.png", alt: trash.phonenum, class: "gravatar", size:"128")
	else
        	image_tag("stop.png", alt: trash.phonenum, class: "gravatar", size:"128")
	end	
end



end
