class CreateBusDrivers < ActiveRecord::Migration
  def change
    create_table :bus_drivers do |t|
      t.string :user_name
      t.float :lat_now, :default => 40.1345073 
      t.float :long_now, :default => 116.4316569
      t.timestamps null: false
    end
  end
end
