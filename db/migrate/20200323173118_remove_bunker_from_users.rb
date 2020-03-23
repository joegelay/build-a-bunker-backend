class RemoveBunkerFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :bunker_id, :integer
  end
end
