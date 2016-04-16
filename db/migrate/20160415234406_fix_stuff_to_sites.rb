class FixStuffToSites < ActiveRecord::Migration
  def change
	rename_column :bus_routes, :stuff, :sites
  end
end
