class AddCapacityToBusNumbers < ActiveRecord::Migration
  def change
    add_column :bus_numbers, :capacity, :integer, :default => 60
  end
end
