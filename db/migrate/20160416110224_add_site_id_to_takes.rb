class AddSiteIdToTakes < ActiveRecord::Migration
  def change
    add_column :takes, :site_id, :integer
  end
end
