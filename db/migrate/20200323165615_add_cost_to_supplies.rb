class AddCostToSupplies < ActiveRecord::Migration[6.0]
  def change
    add_column :supplies, :cost, :integer
  end
end
