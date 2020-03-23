class AddUserRefToBunkers < ActiveRecord::Migration[6.0]
  def change
    add_reference :bunkers, :user, null: true, foreign_key: true
  end
end
