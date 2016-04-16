class AddBusNumerIdToBusDriver < ActiveRecord::Migration
  def change
    add_column :bus_drivers, :bus_numbuer_id, :integer
  end
end
