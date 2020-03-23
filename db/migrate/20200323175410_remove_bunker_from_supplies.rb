class RemoveBunkerFromSupplies < ActiveRecord::Migration[6.0]
  def change
    remove_column :bunkers, :supply_id, :integer 
  end
end
