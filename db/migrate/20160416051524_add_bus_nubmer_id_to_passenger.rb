class AddBusNubmerIdToPassenger < ActiveRecord::Migration
  def change
    add_column :passengers, :bus_number_id, :integer
  end
end
