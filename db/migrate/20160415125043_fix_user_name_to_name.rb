class FixUserNameToName < ActiveRecord::Migration
  def change
    rename_column :bus_drivers, :user_name, :name
  end
end
