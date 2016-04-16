class CreateBusNumbers < ActiveRecord::Migration
  def change
    create_table :bus_numbers do |t|
      t.string :name
      t.integer :bus_route_id
      t.integer :start_time

      t.timestamps null: false
    end
  end
end
