class RemoveSuppliesFromBunker < ActiveRecord::Migration[6.0]
  def change
    remove_column :supplies, :bunker_id, :integer 
  end
end
