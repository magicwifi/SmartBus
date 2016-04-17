# encoding:utf-8
class BusRoute < ActiveRecord::Base
has_many :bus_numbers
serialize :sites



def self.show_route_all
	routes = BusRoute.all
	{ :check=>true, :routes=>routes }
end

def self.show_route_detail(params)
	br = BusRoute.find(params[:bus_route_id])
	if br.nil? or br.bus_numbers.nil? 
	{:check=>false, :code=>400,:msg=>"Not Found"}
	else
	site_positions =[]
  	sites = br.sites
	sites.each do |site|
		site_positions << Site.find(site).position
	end
	{ :check=>true, :bus_numbers => bus_numbers,:site=>sites }
		
	end
end

end
