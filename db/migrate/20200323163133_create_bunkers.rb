class CreateBunkers < ActiveRecord::Migration[6.0]
  def change
    create_table :bunkers do |t|
      t.string :name
      t.references :module, null: false, foreign_key: true
      t.references :supply, null: false, foreign_key: true

      t.timestamps
    end
  end
end
