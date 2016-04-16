class AddStuffToBusRoute < ActiveRecord::Migration
  def change
    add_column :bus_routes, :stuff, :text
  end
end
