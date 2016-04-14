class CreateTrashes < ActiveRecord::Migration
  def change
    create_table :trashes do |t|
      t.string :name
      t.string :phonenum
      t.integer :charge_time
      t.float :battery_remain
      t.boolean :mechanics_status
      t.boolean :equipment_status
      t.integer :compress_time
      t.float :overflow_remain
      t.integer :switch_time

      t.timestamps null: false
    end
  end
end
