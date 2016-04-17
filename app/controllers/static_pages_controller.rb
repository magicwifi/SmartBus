class StaticPagesController < ApplicationController
  def home
	if logged_in?
		redirect_to bus_numbers_url 
	end
  end

  def help
  end
end
