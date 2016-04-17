class AddPasswordConfirmationToBusAdmins < ActiveRecord::Migration
  def change
    add_column :bus_admins, :password_confirmation, :string
  end
end
