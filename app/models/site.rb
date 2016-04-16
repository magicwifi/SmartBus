# encoding:utf-8
class Site < ActiveRecord::Base
validates :position,uniqueness: true, presence: true, length: { maximum: 50 } 
has_many :takes
has_many :reservations

def self.query_lat_long(place)
  require"open-uri"
  require"json"
  uri = "http://api.map.baidu.com/geocoder/v2/?address="+place+"&output=json&ak=5dfe24c4762c0370324d273bc231f45a"
  begin
        encoded_uri = URI::encode(uri)
	baidu_response = open(encoded_uri).read
        json =  ActiveSupport::JSON.decode(baidu_response)
	rescue Exception => e
	return false;
	end

	if json["status"] == 0
	lng = json["result"]["location"]["lng"]
	lat = json["result"]["location"]["lat"]
	return { longitude:lng, latitude:lat, position:place }

	else
	return false;
	end

end


end
