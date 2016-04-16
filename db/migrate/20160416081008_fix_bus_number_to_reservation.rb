class FixBusNumberToReservation < ActiveRecord::Migration
  def change
	rename_column :reservations, :bus_number, :bus_number_id
  end
end
