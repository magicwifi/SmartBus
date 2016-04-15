class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :position
      t.float :lat_now, :default => 40.1345073 
      t.float :long_now, :default => 116.4316569
      t.timestamps null: false
    end
  end
end
