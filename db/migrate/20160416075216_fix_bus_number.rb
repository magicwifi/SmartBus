class FixBusNumber < ActiveRecord::Migration
  def change
	rename_column :takes, :bus_number, :bus_number_id
  end
end
