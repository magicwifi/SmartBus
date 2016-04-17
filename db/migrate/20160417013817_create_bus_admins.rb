class CreateBusAdmins < ActiveRecord::Migration
  def change
    create_table :bus_admins do |t|
      t.string :name
      t.string :password
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
