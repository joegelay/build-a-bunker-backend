class AddCategoryToSupplies < ActiveRecord::Migration[6.0]
  def change
    add_column :supplies, :category, :string
  end
end
