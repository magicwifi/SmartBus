class FixBusNumberId < ActiveRecord::Migration
  def change
	rename_column :bus_drivers, :bus_numbuer_id, :bus_number_id
  end
end
