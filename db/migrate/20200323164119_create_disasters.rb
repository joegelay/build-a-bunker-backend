class CreateDisasters < ActiveRecord::Migration[6.0]
  def change
    create_table :disasters do |t|
      t.string :name
      t.integer :food
      t.integer :shelter
      t.integer :weapon
      t.integer :health

      t.timestamps
    end
  end
end
