class CreateBunkerSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :bunker_supplies do |t|
      t.references :bunker, null: false, foreign_key: true
      t.references :supply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
