class FixLongAndLat < ActiveRecord::Migration
  def change
    rename_column :sites, :lat_now, :latitude
    rename_column :sites, :long_now, :longitude
  end
end
