class AddCapacityToSites < ActiveRecord::Migration
  def change
    add_column :sites, :capacity, :integer,:default=>20
  end
end
