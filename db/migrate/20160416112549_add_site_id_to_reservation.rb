class AddSiteIdToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :site_id, :integer
  end
end
