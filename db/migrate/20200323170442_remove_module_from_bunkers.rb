class RemoveModuleFromBunkers < ActiveRecord::Migration[6.0]
  def change
    remove_column :bunkers, :module_id, :integer 
  end
end
