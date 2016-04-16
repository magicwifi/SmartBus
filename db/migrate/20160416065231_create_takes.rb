class CreateTakes < ActiveRecord::Migration
  def change
    create_table :takes do |t|
      t.integer :passenger_id
      t.integer :bus_number

      t.timestamps null: false
    end
  end
end
