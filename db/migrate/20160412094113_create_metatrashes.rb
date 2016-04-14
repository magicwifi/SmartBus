class CreateMetatrashes < ActiveRecord::Migration
  def change
    create_table :metatrashes do |t|
      t.integer :main_battery,:default => 50
      t.integer :back_battery, :default => 90
      t.integer :forword_current, :default => 2 
      t.integer :back_current, :default => 2
      t.integer :temperature, :default => 35
      t.boolean :sensor70_status, :default => true
      t.boolean :sensor90_status, :default => false
      t.boolean :up_motor_status, :default => true
      t.boolean :down_motor_status, :default => true
      t.boolean :door_sensor_status, :default => true
      t.boolean :voice1_sensor_status, :default => true
      t.boolean :voice2_sensor_status, :default => true
      t.boolean :back_box_stauts, :default => true
      t.boolean :main_back_switch, :default => true
      t.boolean :main_motor_stauts, :default => true
      t.boolean :electromagnet_stauts, :default => true
      t.boolean :voice_module_status, :default => true
      t.boolean :lightbox_module_status, :default => true
      t.boolean :led_module_status, :default => true
      t.integer :error_name, :default => 0
      t.float :latitude, :default => 29.391
      t.float :longitude,  :default => 120.825
      t.integer :cdma_rssi, :default => 20
      t.integer :lightbox_start1_at, :default => 900 
      t.integer :lightbox_stop1_at, :default => 1000
      t.integer :lightbox_start2_at, :default => 1100
      t.integer :lightbox_stop2_at, :default => 1200
      t.integer :led_start1_at, :default => 1300
      t.integer :led_stop1_at, :default => 1400
      t.integer :led_start2_at, :default => 1500
      t.integer :led_stop2_at, :default => 1600
      t.string :control_start1_at, :default => 1100
      t.string :control_stop1_at, :default => 1200
      t.string :control_start2_at, :default => 1600
      t.string :control_stop2_at, :default => 1700
      t.integer :main_lowest_vol, :default => 2
      t.integer :back_lowest_vol, :default => 2
      t.string :apnnum
      t.string :phonenum
      t.string :led_display_string, :default => "欢迎使用智能垃圾桶"
      t.string :name

      t.timestamps null: false
    end
  end
end
